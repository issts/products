<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<core:set var="contextPath" value="${pageContext.request.contextPath}"/>

<core:url value="home.htm"  var="homeUrl"/>                            
<core:url value="aboutus.htm"  var="aboutusUrl"/>    
<core:url value="contact.htm"  var="contactUrl"/>    
<div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">
            <img src="${contextPath}/scripts/images/logo.png" class="img-responsive">
        </a>        
    </div>     
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">        
        <ul class="nav navbar-nav navbar-right">            
            <li class="active">
                <a class="lk tpb" href="${homeUrl}">Home</a>
            </li>     
            <li>
                <a class="lk tpb" href="${aboutusUrl}">About Us</a>
            </li>              
            <li>
                <a class="lk tpb" href="${contactUrl}">Contact</a>
            </li> 
                   
        </ul>               
    </div>                                    
</div>

<script>
    var url = window.location.href;  // returns full url 
    var pathname = window.location.pathname; // returns path only

    var link_count = 0;
    jQuery(".nav li").removeClass("active");
    jQuery(".lk").each(function () {
        var hrf = jQuery(this).attr("href");
        //if(pathname.contains(hrf)){
        if (pathname.indexOf(hrf) !== -1) {
            jQuery(this).parent("li").addClass("active");
            if (jQuery(this).parent("li").parent("ul").attr("class") === "dropdown-menu") {
                jQuery(this).parent("li").parent("ul").parent("li").addClass("active");
            }
            //if(pathname.indexOf("uploadim.htm") !== -1){
            //jQuery("#init").addClass("active");
            //jQuery("#acset").addClass("active");
            //}               
            link_count++;
        }
    });
    if (link_count === 0) {
        //window.location="accessdeny.htm";                 
    }
    jQuery(function () {
        jQuery('.perimg').tipsy({gravity: jQuery.fn.tipsy.autoNS, fade: true});
    });
</script>



