<meta name="google-site-verification" content="6_UetxIV8hkErx3QLTitEXHtX2uxiudDcEYqX1i_Reo" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-87381904-1', 'auto');
  ga('send', 'pageview');
</script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="author" content="Avijit Debnath">
<meta name="Description" content="Software Development,Internship,Tranning"/>
<meta name="Keywords" content="Network Support"/>
<title>ISSTS</title>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="core"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<core:set var="contextPath" value="${pageContext.request.contextPath}"/>
<noscript><meta http-equiv="refresh" content="0; URL=${contextPath}/noscript.jsp"/></noscript>

<link href="${contextPath}/scripts/images/fvico.png" rel="shortcut icon" type="image/x-icon" /> 

<!--<link href="${contextPath}/scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>-->
<link href="${contextPath}/scripts/bootstrapnew/css/bootstrap.min.css" rel="stylesheet"/>
<link href="${contextPath}/scripts/bootstrap/css/modern-business.css" rel="stylesheet"/>
<link href="${contextPath}/scripts/bootstrap/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<!--<link href="${contextPath}/scripts/bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>-->

<link href="${contextPath}/scripts/application/css/docs.min.css" rel="stylesheet"/>
<link href="${contextPath}/scripts/application/css/app.css" rel="stylesheet"/>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->


<script src="${contextPath}/scripts/jquery/jquery-1.11.1.min.js"  type="text/javascript" data-cfasync="false"></script>
<script src="${contextPath}/scripts/bootstrapnew/js/bootstrap.min.js"  type="text/javascript" data-cfasync="false"></script>
<!--<script src="${contextPath}/scripts/bootstrap/js/bootstrap.min.js"  type="text/javascript" data-cfasync="false"></script>-->


<script src="${contextPath}/scripts/jquery/scrollup/jquery.scrollup.min.js" type="text/javascript" data-cfasync="false"></script>
<link href="${contextPath}/scripts/jquery/scrollup/jquery.scrollup.min.css" rel="stylesheet" />

<script src="${contextPath}/scripts/jquery/tooltip/jquery.tooltip.min.js" type="text/javascript" data-cfasync="false"></script>
<link href="${contextPath}/scripts/jquery/tooltip/jquery.tooltip.min.css" type="text/css" media="screen" rel="stylesheet" />

<script src="${contextPath}/scripts/utility/patterns.js" type="text/javascript" data-cfasync="false"></script>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    String today = sdf.format(new Date());
%>
<input type="hidden" id="today" name="today" value="<%=today%>"/>
<input type="hidden" id="contextPath" name="contextPath" value="${contextPath}"/>
