jQuery(function()
{   
    jQuery('.error').click(function(){jQuery(this).text('');}); 
});

function changeCaptcha()
{          
    var src = "./jcaptcha.jpg?date="+new Date();
    jQuery("#jcaptchaimg").attr("src",src);
}
function validateDetails(){      
    var fullname = jQuery.trim(jQuery("#fullname").val());    
    var mobile = jQuery.trim(jQuery("#mobile").val());    
    var email = jQuery.trim(jQuery("#email").val());    
    var message = jQuery.trim(jQuery("#message").val());    
    var usercaptcha = jQuery.trim(jQuery("#usercaptcha").val());    
        
    if (fullname==="") {
        showMsg("fullname","Enter full name");
        return false;     
    }else if (!fullname.match(PATTERN_ALPHABETS)) { 
        showMsg("fullname",'Enter a valid name');              
        return false;          
    }else{      
        showMsg("fullname","");
    }    
    
    if(mobile===""){  
        showMsg("mobile","Enter mobile number");        
        return false;  
    }else if (!mobile.match(PATTERN_MOBILE)) {
        showMsg("mobile","Check mobile number");              
        return false;      
    }else{      
        showMsg("mobile","");
    } 
    
    if (email==="") {
        showMsg("email","Enter emailid");
        return false;  
    }else if (!email.match(PATTERN_EMAIL)) {
        showMsg("email","Enter a valid emailid");              
        return false;     
    }else{         
        showMsg("email","");
    } 
    
    if (message==="" || message.length<20) {
        showMsg("message","Message should contain at lease 20 characters");
        return false;  
    }else{         
        showMsg("message","");
    } 
    if (usercaptcha==="") {
        showMsg("usercaptcha","Enter captcha");
        return false;  
    }else{         
        showMsg("usercaptcha","");
    } 
    jQuery("#feedbackForm").submit();
    //return true;    
}
