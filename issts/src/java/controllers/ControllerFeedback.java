
package controllers;

import static util.common.EmailSend.sendEmail;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import models.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import validators.ValidateFeedback;

@Scope("request")
@Controller
public class ControllerFeedback {
    
    @Autowired private ValidateFeedback validateFeedback;
    
    @RequestMapping(value = "/contact.htm", method = RequestMethod.GET)
    public String contact(ModelMap model,@ModelAttribute("feedback") Feedback feedback, HttpServletRequest request) {
        model.addAttribute("messagesuccess","");
        HttpSession session = request.getSession();         
        return "contact";
    } 
    
    @RequestMapping(value = "/contact.htm", method = RequestMethod.POST)
    public String sendFeedback(ModelMap model,@ModelAttribute("feedback") Feedback feedback,BindingResult result, HttpServletRequest request) 
    {       
        HttpSession session = request.getSession();                 
        feedback.setSessioncaptcha((String) request.getSession().getAttribute("CAPTCHA_KEY"));
        validateFeedback.validate(feedback, result);   
               
        if (!result.hasErrors()) 
        {                    
            String msg  = "From "+feedback.getFullname()+"<br>";
                   msg += "Email : "+feedback.getEmail()+"<br>";
                   msg += "Mobile : "+feedback.getMobile()+"<br>";
                   msg += feedback.getMessage()+"<br>";
            sendEmail("avijitdebnath.issts@gmail.com","Avijit Debnath","ISSTS Guest Message",msg);
            sendEmail("syedazeenat.issts@gmail.com","Syeda Zeenat","ISSTS Guest Message",msg);
            sendEmail("narayanchhetry.issts@gmail.com","Rarayan Chhetry","ISSTS Guest Message",msg);
            //System.out.println("msg  : "+msg);
            //sendEmail("services.issts@gmail.com",feedback.getFullname(),"Feedback",msg);
            //(String emailidto,String nameto,String emailSubject,String emailDescription)
            model.addAttribute("feedback",new Feedback());
            model.addAttribute("messagesuccess","Message delivered successfully.");
            return "contact";       
        }else{
            return "contact";            
        }     
    }      
    
}
