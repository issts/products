<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<core:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%--<core:set var="googleplus" value="https://plus.google.com/117535212151745635656/about?_ga=1.39315361.38606798.1459983811"/>
<core:set var="facebook" value="https://www.facebook.com/Rapidtut-1609809282573057"/>
<core:set var="twitter" value="https://twitter.com/tutrapid"/>
<core:set var="googleplus" value="https://plus.google.com/117535212151745635656"/>--%>

<%--
<core:set var="youtubt" value="https://www.youtube.com/channel/UCt6YaG2dNFA9o3hv5Un9I3g"/>
<core:set var="googleplus" value="https://plus.google.com/+Rapidtut"/>
<core:set var="facebook" value="https://www.facebook.com/Rapidtut"/>
<core:set var="twitter" value="https://twitter.com/Rapidtut"/>
--%>

<core:set var="googleplus" value="https://plus.google.com/103994908263980532120"/>
<core:set var="facebook" value="https://www.facebook.com/ISSTS-321261824920693/"/>
<core:set var="twitter" value="https://twitter.com/ISSTS24x7"/>


<html>
<head>
    <%@include file="common/headerfiles.jsp" %>       
    <script src="${contextPath}/scripts/application/js/contact.js" type="text/javascript" data-cfasync="false"></script>	
</head>

<body>    
    <nav class="navbar navbar-fixed-top navbar-default" role="navigation" style="">
        <%@include file="common/nav.jsp" %>   
    </nav> 
<!--    
    <header id="myCarousel" class="carousel slide">
        <%--<%@include file="common/header.jsp" %>--%>   
    </header>
-->
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header ctitle">Contact <small>Us</small></h3>
                <ol class="breadcrumb">
                    <li><a href="home.htm">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-md-8">
                <!--https://www.embed-map.com/-->
                <!-- Embedded Google Map -->
                <div style="width:100%;max-width:100%;overflow:hidden;height:400px;color:red;">
                    <div id="google-maps-canvas" style="height:100%; width:100%;max-width:100%;">
                        <iframe  style="height:100%;width:100%;border:0;"  style="border:0"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1499.6750677881944!2d91.89296371443199!3d25.564341055704666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37507ea3a371af69%3A0xa582092593411ac3!2sISSTS!5e1!3m2!1sen!2sin!4v1489595277228" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <!-- Contact Details Column -->
            <div class="col-md-4">
                <h3>Contact Details</h3>
                <p>
                    Bait-Us-Saad,<br>
                    Tripura Castle Road,<br> 
                    Shillong, Meghalaya - 793003 
                    <br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">P</abbr>: (+91) 9863434033</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">E</abbr>: <a href="mailto:services.issts@gmail.com ">services.issts@gmail.com </a>
                </p>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Hours">H</abbr>: Monday - Saturday 9:00 AM to 6:00 PM
                </p>
                <ul class="list-unstyled list-inline list-social-icons">             
                        <li>
                            <a href="${facebook}" target="_blank"><i class="fa fa-facebook-square fa-2x"></i></a>
                        </li>
                        <li>
                            <a href="${twitter}" target="_blank"><i class="fa fa-twitter-square fa-2x"></i></a>
                        </li>
                        <li>
                            <a href="${googleplus}" target="_blank"><i class="fa fa-google-plus-square fa-2x"></i></a>
                        </li>
<!--                        
                        <li>
                            <a href="${youtubt}" target="_blank"><i class="fa fa-youtube-square fa-2x"></i></a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" target="_blank"><i class="fa fa-linkedin-square fa-2x"></i></a>
                        </li>                    
                        <li>
                            <a href="javascript:void(0);" target="_blank"><i class="fa fa-pinterest-square fa-2x"></i></a>
                        </li>                     
-->
                </ul>  
                <div>Need help finding ISSTS?</div> 
                <a href="${contextPath}/ISSTS_Map.pdf" target="_blank" class="btn btn-primary">Download a PDF Map</a>
            </div>
        </div>
        <!-- /.row -->        

        <div class="row">
            <div class="col-md-8">
                <h3>Send us a Message</h3>
                <form:form method="POST" modelAttribute="feedback" name="feedbackForm" id="feedbackForm">                       
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Full Name:</label>
                            <form:input path="fullname" cssClass="form-control" maxlength="50" autocomplete="off"/>
                            <form:errors path="fullname" cssClass="error"/>
                            <span id="fullnameMsg" class="error"></span>       
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <form:input path="mobile" cssClass="form-control" maxlength="10" autocomplete="off"/>
                            <form:errors path="mobile" cssClass="error"/>
                            <span id="mobileMsg" class="error"></span>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <form:input path="email" cssClass="form-control" maxlength="50" autocomplete="off"/>
                            <form:errors path="email" cssClass="error"/>
                            <span id="emailMsg" class="error"></span>
                        </div>
                    </div>                      
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <form:textarea path="message" class="form-control" rows="10" cols="100" maxlength="1000" style="resize:none" autocomplete="off"></form:textarea>
                            <p class="help-block"><i><small>Message should contain 20 to 999 characters.</small></i></p>
                            <form:errors path="message" cssClass="error"/>
                            <span id="messageMsg" class="error"></span>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">                            
                            <img src="./jcaptcha.jpg" id="jcaptchaimg" onclick="changeCaptcha();" title="Click To Reload" style="cursor: pointer;"/>
                            <form:input path="usercaptcha" class="" autocomplete="off" />
                            <img src="${contextPath}/scripts/images/icon-refresh.png" id="jcaptchaRef" onclick="changeCaptcha();" title="Click To Reload" style="cursor: pointer;"/>   
                            <input type="button" class="btn btn-primary pull-right" value="Send Message" onclick="validateDetails()"/>
                            <br>
                            <form:errors path="usercaptcha" cssClass="error" cssStyle="float:left;"/>
                            <div id="usercaptchaMsg" class="error"></div>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">                            
                            <span class="error"><core:out value="${messagesuccess}"></core:out></span>
                            <core:if test="${not empty error}">
                                <div class="error" id="serverresponse">Unable to process request!<bt>Please try again later.</div>
                                <script>
                                    jQuery(function () {
                                        jQuery("#serverresponse").show();
                                        jQuery("#serverresponse").fadeOut(3500);
                                    });
                                </script>                                            
                            </core:if>
                        </div>
                    </div>
                    <br>    
                </form:form>
            </div>
        </div>        
        
        
    </div>    
    <footer class="foote-default" >
        <%@include file="common/footer.jsp" %>   
    </footer>        
</body>
</html>
