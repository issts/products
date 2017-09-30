package util.common;

/***** @author Avijit Debnath *****/



import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.DefaultAuthenticator;

public class EmailSend 
{
    public static void sendEmail(String emailidto,String nameto,String emailSubject,String emailDescription)
    {
         try 
         {                         
            Properties prop = new Properties();
            prop.load(EmailSend.class.getClassLoader().getResourceAsStream("EmailConfiguration.properties"));

            String FROM_ID =  prop.getProperty("email.fromid").trim();    
            String FROM_NAME = prop.getProperty("email.fromname").trim();
            String SMTP_PORT = prop.getProperty("email.smtpport").trim();
            String HOST_NAME = prop.getProperty("email.hostname").trim();            
            String AUTH_USER = prop.getProperty("email.auth.user").trim();            
            String AUTH_PASS = prop.getProperty("email.auth.pass").trim();            
            
            System.out.println("FROM_ID : "+FROM_ID);
            System.out.println("FROM_NAME : "+FROM_NAME);
            System.out.println("SMTP_PORT : "+SMTP_PORT);
            System.out.println("HOST_NAME : "+HOST_NAME);
            System.out.println("AUTH_USER : "+AUTH_USER);
            System.out.println("AUTH_PASS : "+AUTH_PASS);
            
            HtmlEmail email = new HtmlEmail();
            email.addTo(emailidto,nameto);
            email.setSubject(emailSubject);
            email.setHtmlMsg(emailDescription);
            email.setFrom(FROM_ID,FROM_NAME);                
            email.setSmtpPort(Integer.valueOf(SMTP_PORT));
            email.setHostName(HOST_NAME);
            email.setAuthenticator(new DefaultAuthenticator(AUTH_USER,AUTH_PASS));
            email.setSSLOnConnect(true);
            email.send();                                        
         } catch (EmailException | IOException ex) {
            System.out.println("Mail sending error : "+ex);
         }    
    }     
             
    public static void main(String arg[])
    {   
        sendEmail("avijitdebnath.issts@gmail.com","Avijit","Test","Test : "+new Date() );
    }
    
    //https://support.google.com/a/answer/176600?hl=en
    //https://commons.apache.org/proper/commons-email/userguide.html  
    /*
    public static void main(String arg[])
    {   
        //EmailPrepare.sendVerificationMail("adsnasa@gmail.com","Avijit","542daa5d92ea4eddcf3dc9737f8195a70a7a2dcabd6f7ff9b36b31c587b64992");
        //EmailPrepare.sendRecoveryMail("adsnasa@gmail.com","Avijit","542daa5d92ea4eddcf3dc9737f8195a70a7a2dcabd6f7ff9b36b31c587b64992");
        //System.out.println("UtilCommon().getRandomNoBig() : "+new UtilCommon().getRandomNoBig());         
         try 
         {                         
            //Email email = new SimpleEmail();
            //email.setSmtpPort(587);            
            //email.setHostName("smtp.gmail.com");                
             
            HtmlEmail email = new HtmlEmail();
            email.addTo("adsnasa@gmail.com","Avi");
            email.setSubject("Test");
            email.setHtmlMsg("Test data.....");
            email.setFrom("tutrapid@gmail.com","RAPIDTUT");                
            email.setSmtpPort(465);
            email.setHostName("smtp.googlemail.com");
            email.setAuthenticator(new DefaultAuthenticator("tutrapid@gmail.com", "Avijit@2014"));
            email.setSSLOnConnect(true);
            email.send();                                        
         } catch (EmailException ex) {
            System.out.println("Mail sending error : "+ex);
         }                  
    }        
    */
}
