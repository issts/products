
package validators;

import models.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


@Component
public class ValidateFeedback implements Validator 
{
    @Autowired MessageSource messages;

    @Override
    public boolean supports(Class<?> type) {
        return Feedback.class.isAssignableFrom(type);
    }

    @Override  
    public void validate(Object o, Errors errors) 
    {

        Feedback feedback = null;
        if(o instanceof Feedback) {
            feedback = (Feedback) o;
        }
        boolean errorFlag = false;
               
        //=========================================================================             
        if(feedback.getUsercaptcha() != null) 
        {
            if(feedback.getSessioncaptcha() != null && feedback.getUsercaptcha().equalsIgnoreCase(feedback.getSessioncaptcha())) {

            }else{
                errors.rejectValue("usercaptcha", null, "Entered captcha doesn't match!");
                return;            
            }
        }  
             
        
    }
    
}
