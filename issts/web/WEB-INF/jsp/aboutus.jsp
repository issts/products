<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="core"%>
<core:set var="founder" value="profile.htm?id=1c7788461c15bbc5e790da2ffbf22bbddf137f61ef625800d439b81268457dba"/>
<html>
<head>
    <%@include file="common/headerfiles.jsp" %>         
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
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header ctitle">About <small>Us</small></h3>
                <ol class="breadcrumb">
                    <li><a href="home.htm">Home</a></li>
                    <li class="active">About</li>
                </ol>
            </div>
        </div>
        <div class="row">            
            <div class="col-md-12">
                <h3 class="ctitle">About ISSTS</h3>
                <p class="textjustify">                    
                    ISSTS is a growing Information Technologies solution provider founded by a group of young enthusiastic entrepreneurs with a clear and broader vision inspired by their innovative thinking and passionate about providing exceptional IT solutions.
                </p>
                <p class="textjustify">                    
                    We believes in customer satisfaction and works untiringly towards achieving it by delivering high quality services in Website design, Software and Mobile App development, Live Webcast, Webinar, Networking, Hardware support and services, Classroom solution, Surveillance system and Tracking systems for vehicles and others.
                </p>
                <p class="textjustify">                    
                    Our strength lies in our team of dedicated, dynamic, speculative and energetic young technocrats who works tirelessly to provide customer satisfaction. Commitment towards the goal unitedly makes us unique and outstanding.We have the resource of experienced professionals who have vast experience in the areas of Website Designing, Software Development, Corporate Communication, Internet based services and technology, Networking, hardware, and Audio-video solutions. 
                </p>                             
                <h3 class="ctitle">Team @ ISSTS</h3>  
                <div class="col-sm-1 team">
                    <span></span>                    
                    <p>
                        <img src="${contextPath}/scripts/images/team_avijitdebnath_founder.jpg" class="img-circle img-responsive"/>    
                        <h4>Avijit Debanth</h4>
                        <span>(Founder & Managing Director)</span>
                        <div><i class="fa fa-phone"></i> : +91 9863434033</div>
                        <div><i class="fa fa-envelope"></i> : avijitdebnath.issts@gmail.com</div>
                    </p>                
                </div>  
                <div class="col-md-1 team">
                    <span></span>                    
                    <p>
                        <img src="${contextPath}/scripts/images/team_zeenat_founder.jpg" class="img-circle img-responsive"/>    
                        <h4>Syeda Zeenat</h4>
                        <span>(Co-Founder & Project Manager)</span>
                        <div><i class="fa fa-phone"></i> : +91 9863234737</div>
                        <div><i class="fa fa-envelope"></i> : syedazeenat.issts@gmail.com</div>                        
                    </p>                
                </div>  
<!--                <div class="col-md-1 team">
                    <span></span>                    
                    <p>
                        <img src="${contextPath}/scripts/images/female.png" class="img-circle img-responsive"/>    
                        <h4>Maya Kumari</h4>
                        <span>(Co-Founder)</span>
                        <div><i class="fa fa-phone"></i> : +91 9612240265</div>                        
                        <div><i class="fa fa-envelope"></i> : mayakumatri.issts@gmail.com</div>                        
                    </p>                
                </div>                         
                <div class="col-md-1 team">
                    <span></span>                    
                    <p>
                        <img src="${contextPath}/scripts/images/team_narayan_technicaladviser.jpg" class="img-circle img-responsive"/>    
                        <h4>Narayan Chhetry</h4>
                        <span>(Technical Advisor)</span>
                        <div><i class="fa fa-phone"></i> : +91 9402557139</div>                         
                        <div><i class="fa fa-envelope"></i> : narayanchhetry.issts@gmail.com</div>                        
                    </p>                
                </div>  
-->
                <div class="col-md-1 team">
                    <span></span>                    
                    <p>
                        <img src="${contextPath}/scripts/images/team_debajit_legaladviser.jpg" class="img-circle img-responsive"/>    
                        <h4>Debajit Debnath</h4>
                        <span>(Legal Adviser)</span>
                        <div><i class="fa fa-phone"></i> : +91 9864832854</div>                         
                        <div><i class="fa fa-envelope"></i> : debajitdebnath.issts@gmail.com</div>                        
                    </p>                
                </div>                         
                       
            </div> 
                   
            
            
<!--            
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header ctitle">Team @ ISSTS</h3>
                </div>
            </div>             
            <div class="col-md-12">
                <div class="col-md-4">                   
                    <h3 class="ctitle">Avijit Debnath <small>(Founder & Managing Director)</small></h3>
                    <p>                    
                        <img src="${contextPath}/scripts/images/avijitdebnath_founder.jpg" class="img-thumbnail img-responsive"/>                                                      
                    </p>
                </div>
                <div class="col-md-8">
                    <p>
                        <br>
                        <div class="about">
                            Avijit Debnath is an IT Professional and has more than 8 years of experience in project management (planning,design,development and implementation).
                            <br>
                            He completed his MCA from Jorhat Engineering College (Assam) and acquired global certifications like
                            <div>* Oracle Certified Database Administrator,</div>                                   
                            <div>* Oracle Certified Professional, Java Programmer,</div>
                            <div>* Oracle Certified Expert, Java Web Component Developer,</div>                    
                            <div>* Oracle Certified Expert, Java Web Services Developer,</div>
                            <div>* Oracle Certified Expert, Java Java Persistence API Developer,</div>
                            <div>* Oracle Certified Expert, Java Enterprise JavaBeans Developer.</div>                    
                        </div>
                    </p>
                    <p><i class="fa fa-phone"></i> 
                        <abbr title="Phone">P</abbr>: (+91) 9863434033</p>
                    <p><i class="fa fa-envelope-o"></i> 
                        <abbr title="Email">E</abbr>: <a href="mailto:avijitdebnath.issts@gmail.com">avijitdebnath.issts@gmail.com</a>
                    </p> 
                </div>
            </div>   
            <div class="col-md-12">
                <div class="col-md-4">                   
                    <h3 class="ctitle">Avijit Debnath <small>(Founder & Managing Director)</small></h3>
                    <p>                    
                        <img src="${contextPath}/scripts/images/zeenat_founder.jpg" class="img-thumbnail img-responsive"/>                                                      
                    </p>
                </div>
                <div class="col-md-8">
                    <p>
                        <br>
                        <div class="about">
                            Avijit Debnath is an IT Professional and has more than 8 years of experience in project management (planning,design,development and implementation).
                            <br>
                            He completed his MCA from Jorhat Engineering College (Assam) and acquired global certifications like
                            <div>* Oracle Certified Database Administrator,</div>                                   
                            <div>* Oracle Certified Professional, Java Programmer,</div>
                            <div>* Oracle Certified Expert, Java Web Component Developer,</div>                    
                            <div>* Oracle Certified Expert, Java Web Services Developer,</div>
                            <div>* Oracle Certified Expert, Java Java Persistence API Developer,</div>
                            <div>* Oracle Certified Expert, Java Enterprise JavaBeans Developer.</div>                    
                        </div>
                    </p>
                    <p><i class="fa fa-phone"></i> 
                        <abbr title="Phone">P</abbr>: (+91) 9863434033</p>
                    <p><i class="fa fa-envelope-o"></i> 
                        <abbr title="Email">E</abbr>: <a href="mailto:avijitdebnath.issts@gmail.com">avijitdebnath.issts@gmail.com</a>
                    </p> 
                </div>
            </div>                     
-->
        </div>                
    </div>    
    <footer class="foote-default" >
        <%@include file="common/footer.jsp" %>   
    </footer>        
</body>
</html>
