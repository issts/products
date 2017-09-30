package util.common;

import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.awt.*;
import java.util.*;
import java.awt.geom.AffineTransform;
import javax.imageio.IIOImage;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;

public class Captcha extends HttpServlet {

//  public static final String CAPTCHA_KEY = "captcha_key_name";
    public void init(ServletConfig config) throws ServletException {
        //  super.init(config);
        // height=Integer.parseInt(getServletConfig().getInitParameter("height"));
        //   width=Integer.parseInt(getServletConfig().getInitParameter("width"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        //Expire response
        response.setHeader("Cache-Control", "no-cache");
//        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Max-Age", 0);


//        response.setContentType("image/jpg");
        try {

            Color backgroundColor = Color.white;
            Color textColor = Color.BLACK;
            Color circleColor = Color.GRAY;//new Color(60, 160, 160);
            Font textFont = new Font("Arial", Font.PLAIN, 24);
            int charsToPrint = 5;

            int width = request.getParameter("width") != null ? Integer.parseInt(request.getParameter("width")) : 120;
            int height = request.getParameter("height") != null ? Integer.parseInt(request.getParameter("height")) : 30;

            int circlesToDraw = 8;
            float horizMargin = 20.0f;
            float imageQuality = 1;//0.95f; // max is 1.0 (this is for jpeg)
            double rotationRange = 0.7; // this is radians

            BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics2D g = (Graphics2D) bufferedImage.getGraphics();

            //Draw an oval
            g.setColor(backgroundColor);
            g.fillRect(0, 0, width, height);

            // lets make some noisey circles
            g.setColor(circleColor);
            for (int i = 0; i < circlesToDraw; i++) {
                int circleRadius = (int) (Math.random() * height / 2.0);
                int circleX = (int) (Math.random() * width - circleRadius);
                int circleY = (int) (Math.random() * height - circleRadius);
                // g.drawOval(circleX, circleY, circleRadius * 2, circleRadius * 2);
                // g.drawLine(0, i*13, width, i*13);
                g.drawLine(i * 19, 0, i * 19, height);
                g.drawRect(0, 0, width - 1, height - 1);
            }

            g.setColor(textColor);
            g.setFont(textFont);

            FontMetrics fontMetrics = g.getFontMetrics();
            int maxAdvance = fontMetrics.getMaxAdvance();
            int fontHeight = fontMetrics.getHeight();


            String elegibleChars = "ABCDEFGHJKLMNPQRSTUVWXYabcdefghkmnpqrstuvwxy23456789";
            char[] chars = elegibleChars.toCharArray();

            float spaceForLetters = -horizMargin * 2 + width;
            float spacePerChar = spaceForLetters / (charsToPrint - 1.0f);

            AffineTransform transform = g.getTransform();

            StringBuffer finalString = new StringBuffer();

            for (int i = 0; i < charsToPrint; i++) {
                double randomValue = Math.random();
                int randomIndex = (int) Math.round(randomValue * (chars.length - 1));
                char characterToShow = chars[randomIndex];
                finalString.append(characterToShow);

                // this is a separate canvas used for the character so that
                // we can rotate it independently
                int charImageWidth = maxAdvance * 2;
                int charImageHeight = fontHeight * 2;
                int charWidth = fontMetrics.charWidth(characterToShow);
                int charDim = Math.max(maxAdvance, fontHeight);
                int halfCharDim = (int) (charDim / 2);

                BufferedImage charImage = new BufferedImage(charDim, charDim, BufferedImage.TYPE_INT_ARGB);
                Graphics2D charGraphics = charImage.createGraphics();
                charGraphics.translate(halfCharDim, halfCharDim);
                double angle = (Math.random() - 0.5) * rotationRange;
                charGraphics.transform(AffineTransform.getRotateInstance(angle));
                charGraphics.translate(-halfCharDim, -halfCharDim);
                charGraphics.setColor(textColor);
                charGraphics.setFont(textFont);

                int charX = (int) (0.5 * charDim - 0.5 * charWidth);
                charGraphics.drawString("" + characterToShow, charX, (int) ((charDim - fontMetrics.getAscent()) / 2 + fontMetrics.getAscent()));

                float x = horizMargin + spacePerChar * (i) - charDim / 2.0f;
                int y = (int) ((height - charDim) / 2);

                g.drawImage(charImage, (int) x, y, charDim, charDim, null, null);
                charGraphics.dispose();

                charImage = null;
                charGraphics = null;

            }

            //Write the image as a jpg
            Iterator iter = ImageIO.getImageWritersByFormatName("JPG");
            if (iter.hasNext()) {
                ImageWriter writer = (ImageWriter) iter.next();
                ImageWriteParam iwp = writer.getDefaultWriteParam();
                iwp.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
                iwp.setCompressionQuality(imageQuality);
                writer.setOutput(ImageIO.createImageOutputStream(response.getOutputStream()));
                IIOImage imageIO = new IIOImage(bufferedImage, null, null);
                writer.write(null, imageIO, iwp);

                writer = null;
                iwp = null;
                imageIO = null;

            } else {
                throw new RuntimeException("no encoder found for jsp");
            }

            // let's stick the final string in the session
            request.getSession().setAttribute("CAPTCHA_KEY", finalString.toString());

            g.dispose();

            g = null;
            bufferedImage = null;
            textFont=null;
            fontMetrics = null;
            transform = null;
            finalString = null;
            iter = null;
        } catch (IOException ioe) {
            ioe.printStackTrace();
           // throw new RuntimeException("Unable to build image", ioe);
        }

    }
}
