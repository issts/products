
<!--<core:set var="youtubt" value="https://www.youtube.com/channel/UCt6YaG2dNFA9o3hv5Un9I3g"/>-->
<!--
<core:set var="googleplus" value="https://plus.google.com/+Rapidtut"/>
<core:set var="facebook" value="https://www.facebook.com/Rapidtut"/>
<core:set var="twitter" value="https://twitter.com/Rapidtut"/>
-->
<!--<core:set var="iinkedln" value="https://www.linkedin.com/in/issts-284050132?trk=nav_responsive_tab_profile"/>-->
<core:set var="googleplus" value="https://plus.google.com/103994908263980532120"/>
<core:set var="facebook" value="https://www.facebook.com/ISSTS-321261824920693/"/>
<core:set var="twitter" value="https://twitter.com/ISSTS24x7"/>

<div class="container" style="border-top:1px solid #DDD;padding-top: 10px;">
    <div class="row">
        <div class="col-xs-3 col-md-3 logo" id="flink" title="Developed by Avijit Debnath">Copyright &copy; issts.com 2017</div>
        <div class="col-xs-9 col-md-9 text-right">
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
                    <a href="javascript:void(0);"><i class="fa fa-linkedin-square fa-2x"></i></a>
                </li>                    
                <li>
                    <a href="javascript:void(0);"><i class="fa fa-pinterest-square fa-2x"></i></a>
                </li>                     
-->             
            </ul>            
        </div>        
        <div class="bs-docs-social">
            <ul class="bs-docs-social-buttons">
                &nbsp;
            </ul>            
        </div>
    </div>
</div>

<script>
jQuery(function () {   
    jQuery.scrollUp({animation: 'fade'}); 
    jQuery('#flink').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('.memberimg').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('#pubstatus span').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('#pubstatus .ratings').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('.img-a img').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('.flg').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('.contactsym').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    jQuery('#yourcircle img').tipsy({gravity: jQuery.fn.tipsy.autoNS,fade: true}); 
    //Script to Activate the Carousel
    jQuery('.carousel').carousel({
        interval: 5000 //changes the speed
    });     
});      
</script>  

