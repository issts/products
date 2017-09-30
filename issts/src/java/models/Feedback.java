
package models;


public class Feedback {
            
    private String fullname;         
    private String email;    
    private String mobile;         
    private String message;    
    private String entrydate;      
    private String usercaptcha;      
    private String sessioncaptcha;     

    public Feedback() {
    }


    public String getFullname() {
        return fullname;
    }
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

    public String getEntrydate() {
        return entrydate;
    }
    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate;
    }

    public String getUsercaptcha() {
        return usercaptcha;
    }
    public void setUsercaptcha(String usercaptcha) {
        this.usercaptcha = usercaptcha;
    }

    public String getSessioncaptcha() {
        return sessioncaptcha;
    }
    public void setSessioncaptcha(String sessioncaptcha) {
        this.sessioncaptcha = sessioncaptcha;
    }

    @Override
    public String toString() {
        return "Feedback{" + "fullname=" + fullname + ", email=" + email + ", mobile=" + mobile + ", message=" + message + ", entrydate=" + entrydate + ", usercaptcha=" + usercaptcha + ", sessioncaptcha=" + sessioncaptcha + '}';
    }

    
}
