<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  --%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>

<?xml version="1.0"?>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd"> 

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd"> -->
<?xml version="1.0"?>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pearson Q-service Portal</title>

<!--  CSS Links-->
<!--To make sure this template was viewed correctly in the majority of browsers, there are several css files.-->

<!--6 CSS files total, listed below-->

<!--Blueprint Framework CSS-->
<!--CSS IE Render Fixes-->
<!--Custom Styling (site_styles.css)-->
<!--jQuery Sliding Login Panel-->
<!--jQuery Custom Rotator-->
<!--Lightbox Styling-->

<!-- To allow for easy manipulation, I have -->
<!--left the Blueprint Framework untouched, simply overwriting styles in the site_style.css. To make any -->
<!--changes to the template, simply change/modify styles in the site_styles.css file. -->

<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" charset="utf-8" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the top of the index/ page-->
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" charset="utf-8" />


<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css" type="text/css" media="screen, projection">
<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Tools-->
<!--Custom jQuery Set-->
<!--jQuery Delay Plugin-->
<!--jQuery Image Preloader-->

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script>  --%>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>

<%-- 
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script> 
--%>

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>


<!--Preload Image Over Imgs-->

<script type="text/javascript">

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  

	});
</script>






<script type="text/javascript">
$(function() {   
	$( "#accordion" ).accordion(); 
	
	$("#accordion").accordion(
			   { active: "a.default",  header: "a.accordion-label" }
			);
	});
     
</script>


<!-- 


<script type="text/javascript">
	$.preLoadImages([
			'${pageContext.request.contextPath}/img/img_over/main_image1.jpg',
			'./img/img_over/main_image2.jpg', './img/img_over/main_image3.jpg',
			'./img/img_over/main_image4.jpg'

	]);
</script>
 -->

<!--jQuery Sliding Login Panel Button-->
<script type="text/javascript">
	$(document).ready(function() {

		$(".btn-slide").click(function() {
			$("#panel").slideToggle("slow");
			$(this).toggleClass("active");
			return false;
		});

	});
</script>

<!--CUFON Text Replacement-->
<!--This script replaces existing <h> tags with the custom Titillium Font that renders correctly in all modern browsers-->
<!--I have included 2 different Titillium font weights, 400 and 800 respectively.-->
<!--If you want to use the much bolder, 800 weight, simply change the "400" below to "800"-->
<script src="${pageContext.request.contextPath}/js/cufon-yui.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js"
	type="text/javascript"></script>
<script type="text/javascript">
	Cufon.replace('h1');
	Cufon.replace('h2');
	Cufon.replace('h3');
	Cufon.replace('h4');
	Cufon.replace('h5');
	Cufon.replace('h6');
</script>

<!--[if IE 6]>
<script src="./js/DD.js"></script>
<script>
DD_belatedPNG.fix('#leftArrow, #rightArrow, .tab ul.login li, .tab a.open,.tab a.close, img');
</script>
<![endif]-->


<!-- Color hover JavaScript Files -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.color.js"></script>
<script type="text/javascript">
	// Background color animation 
	$(document).ready(function() {
		$(".image_placeset img").hover(function() {
			$(this).stop().animate({
				backgroundColor : "#56BFF8"
			}, 200);
		}, function() {
			$(this).stop().animate({
				backgroundColor : "#f7f7f7"
			}, 400);
		});
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!--This template makes use of the Blueprint CSS framework. -->
	<!--div span-# classes are declared in the framework.css file, and allow easy creation of widths of space -->
	<!-- Example: <div class="span-24"></div> creates a div that is 950px wide and is set for padding.-->
	<!--For more info on different div arrangements, consult the blueprint css framework at-->
	<!--http://blueprintcss.org-->


	<!--This panel is hidden until the 'Login | Register' button is pressed-->
	<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
					
				</div>
				<!--panel box1 close-->

				<!--panel box2-->
				<div class="left">
					
				<!--panel box2 close-->

				<!--panel box3-->
				<div class="left right">
					
				</div>
				<!--panel box3-->

			</div>
		</div>
		<!-- /login -->
	</div>
	<!--panel -->



	<!--The Container class centers design in the center of the screen, -->
	<!-- 950px width centered-->
	<!-- Panel -->
	<div class="container">

		<!-- The tab on top -->
		<div class="tab">
			<ul class="login">
					<!--Button For Login Panel-->
					<li id="toggle"><a id="open" class="open" href="#">Log In
							| Register</a> <a id="close" style="display: none;" class="close"
						href="#">Close Panel</a></li>
				</ul>
				
				<ul class="logout">
                <li id=""><a id="close" class="close" href="${pageContext.request.contextPath}/logout/">Logout</a> 
			</ul>
		</div>
		<!-- close tab -->

 <p align="right" style="text-align:relative;"  style=" font-family: inherit;">
		 <font face="verdana ,helvetica"  size="2" color="#990066" >
				
		<c:if test="${!empty loginType}">
 		<%String name = (String) session.getAttribute("loginName");%>
		<i><b>welcome <%=name%></b></i>	
		</c:if>
		</font>
		</p>
		<!--Begin Header-->
		<div class="header">
			<!--Logo Area-->
			<div class="logo">

				<img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" />

			</div>
			<!--Close Logo Area-->

			<!-- FOR SAMPLE CHCEK-START -->
			<%-- <a href="${pageContext.servletContext.contextPath}/mail/"> Send
				Mail </a> <br> <!--Begin Navigation-->
			<table border="0" width="90%">
				<form:form action="login" commandName="login" method="post">
					<tr>
						<td align="left" width="20%">Email:</td>
						<td align="left" width="40%"><form:input path="email"
								size="30" /></td>
						<td align="left"><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><form:password path="password" size="30" /></td>
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>
					<tr>
						<td></td>
						<td align="center"><input type="submit" value="Login" /></td>
						<td></td>
					</tr>
				</form:form>
			</table>
			 --%>
			<!-- FOR SAMPLE CHECK-END -->
			<ul id="navigation">
			
				<li><a href="${pageContext.request.contextPath}/index/"		id="home" title="Home"><span>home</span></a></li>
				<li><a href="${pageContext.request.contextPath}/services/"	id="services" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"		id="key" title=" Key Achievements"><span>Key Achievements</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/"	id="myrequest_front" title="My Request "><span>my request</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/"	id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		



			<c:if test="${loginType == 'VISITOR'}">
			
			<div id="accordion">
			  
				
					
				<c:forEach var="user" items="${adminUser}">
						<%-- <c:if test="${user.loginType=='QA'}"> --%>
					<h5>


					<table>
					<tr>
					<td>
					<h5>REQUESTID</h5>
					</td>	
					<td>
					<h5>REQUESTDATE</h5>
					</td>	
					<td>
					<h5>STATUS</h5>
					</td>			
					</tr>
					</table>
					
					
					</h5>
			           <div>
			           <p>
                       <table border="1">
                      
						<tr>
							<td><h4>${user.requestID}</h4></td>
							<td><h4>${user.raisedDate}</h4></td>
							<td><h4>${user.status_Id}</h4></td>
							<%-- <td><h4>${user.requestorId}</h4></td>
							<td><h4>${user.serviceId}</h4></td>
							<td><h4>${user.raisedDate}</h4></td>
							<td><h4>${user.lastUpdatedOn}</h4></td> --%>
							
						</tr>
						</table>
						<table>
						<tr>
						 <td><h5>QA Commands :${user.commandsByQA} </h5></td></tr>
						<tr>
						<td><h5>PL Commends :${user.commandsByPL} </h5></td>
						</tr>
						<tr>
						<td> <h5>SLM Commends :${user.commandsBySLM} </h5></td>
						</tr>
						<%-- <tr>
						<td> <h5>ADM Commends :${user.commandsByADM} </h5></td>
						</tr> --%>
						</table>
				      </p>
				     </div>
					</c:forEach>
				
				
				
	<%-- 			
				<h2> click here for seeing list of request rasied by you ..<a href="${pageContext.request.contextPath}/userRequestList" method="post">click	here</a></h2>
	 --%>
	

        </div>
	</c:if>
	
	
		<!-- Declare 950px width for IE-->
		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>
		<!--close hr line, 950px IE fix-->
		<!-- Declare 950px width for IE, once again. Corrects positioning-->
		<!--BEGIN Footer Area-->
<%-- 		<div class="footer">

			<!--#BEGIN FOOTER AREA#-->
			<!--Declare 630px width-->
			<div class="span-16">
				<!--This text area is found directly at the bottom of the page. This area is perfect for a small navigation-->
				<!-- and some brief information about the company-->
				<div class="footer_text">
					<p>
					&copy; <a href="#">Copy Rights 2014</a> &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
					</p>
				</div>
				<!--footer_text close-->

			</div>
			<!--footer close-->

			<!--Footer navigation goes here-->
			<!--Declare 310px width-->
			<div class="span-8 last">

				<ul id="footer-nav">
					<li><a href="${pageContext.request.contextPath}/index/">Home</a>
						|</li>
					<li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a>
						|</li>
					<li><a href="${pageContext.request.contextPath}/services/">Services</a>
						|</li>
					<li><a href="${pageContext.request.contextPath}/blog/">Blog</a>
						|</li>
						
						   <li><a href="${pageContext.request.contextPath}/requestList/">Request</a>|</li>
					<li><a href="${pageContext.request.contextPath}/contact/">Contact</a></li>
				</ul>
				<!--footer-nav close-->


				<!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
				<!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
				<!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->

			</div>
			<!--span8 close-->

		</div>
 --%>		<!--footer close-->


		<div class="footer"> <%@ include file="footer.jsp" %></div>
	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>