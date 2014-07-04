<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  --%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>

<?xml version="1.0"?>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd"> 

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>
<title>Q-Service Portal</title>


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

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Tools-->
<!--Custom jQuery Set-->
<!--jQuery Delay Plugin-->
<!--jQuery Image Preloader-->
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>


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

<!-- 
<script type="text/javascript">
	$.preLoadImages([
			'${pageContext.request.contextPath}/img/img_over/main_image1.jpg',
			'{pageContext.request.contextPath}/img/img_over/main_image2.jpg', '{pageContext.request.contextPath}/img/img_over/main_image3.jpg',
			'{pageContext.request.contextPath}/img/img_over/main_image4.jpg'

	]);
</script> -->


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
		<!--This panel is hidden until the 'Login | Register' button is pressed-->
	<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
					<h1>Welcome to Q-Service Portal</h1>
					<h2>Are you a new client? Let's Begin.</h2>
					<p class="color">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.</p>
					<h2>It's Simple and Cost-Effective!</h2>
					<p class="color">
						See a demo of our client tools in action <a href="#">here
							&raquo;</a>
					</p>
				</div>
				<!--panel box1 close-->

				<!--panel box2-->
				<div class="left">
					<h1>Member Login</h1>
					<!-- Login Form -->
					<form action="${pageContext.request.contextPath}/login"
						method="post" commandName="login" modelAttribute="user">
						<%-- <form:form method="post" commandName="contact" action="${pageContext.request.contextPath}/login"> --%>
						<label class="color">Username:</label> <input class="field"
							type="text" name="log" id="log" value="" size="23" /> <label
							class="color" for="pwd">Password:</label> <input class="field"
							type="password" name="pwd" id="pwd" size="23" />
						
						<label><input name ="rememberme" id="rememberme"
								type="checkbox" value="forever" />&nbsp;Remember me</label>
						<div class="clear"></div>
						<input type="submit" name="submit" value="Login" class="bt_login" />
						<a class="lost-pwd" href="#">Lost your password?</a>
					</form>
				</div>
				<!--panel box2 close-->

				<!--panel box3-->
				<div class="left right">
					<h1>Not a member yet? Sign Up!</h1>
					<form action="${pageContext.request.contextPath}/register"
						method="post" commandName="login" modelAttribute="user">
					<label class="color" for="signup">Username:</label> <input
						class="field" type="text" name="signup" id="signup" value=""
						size="23" /> <label class="color" for="email">Email:</label> <input
						class="field" type="text" name="email" id="email" size="23" /> <label>A
						password will be e-mailed to you.</label> <input type="submit"
						name="submit" value="Register" class="bt_register" />
</form>
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
				<li id="toggle"><a id="open" class="open" href="#">Log In |
						Register</a> <a id="close" style="display: none;" class="close"
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
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home_front" title="Home"><span>home</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/requestList/"
					id="home_front" title="Request"><span>request</span></a></li> --%>
				
					<li><a href="${pageContext.request.contextPath}/requestList/"
					id="port" title="Request "><span>Request</span></a></li>
					<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		
	${password.firstName} YOU ARE REGISTERED SUSSUESFULLY...  THANKYOU 
	${adminUser.firstName}
	
<c:forEach var="user" items="${adminUser}">
${user.firstName}
</c:forEach>
	
		<div>
			<h1></h1>

			<table border="1">
				<tr>
					<td class="heading">First Name</td>
					<td class="heading">Last Name</td>
					<td class="heading">ContactNo</td>
					<td class="heading">Email</td>
					<td class="heading">Address</td>
					<!-- <td class="heading">ReqID</td>
					<td class="heading">ReqName</td> -->
					
					</tr>
				<%-- <c:forEach var="user" items="${adminUser>}"> --%>

				<tr>
					<td>${password.firstName}</td>
					<td>${password.lastName}</td>
					<td>${password.phoneNo}</td>
					<td>${password.email}</td>
					<td>${password.address}</td>
					<td colspan="7"><a href="${pageContext.request.contextPath}/requestList/"
					id="home_front" title="Request"><span>Edit</span></a></td>
					
					<%-- <td><a href="edit?id=${user.userId}"></a></td> --%>


				</tr>
				<%-- </c:forEach> --%>
				<tr>
					
				</tr>
			</table>
			
		</div>
	
	
		<!-- Declare 950px width for IE-->
		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>
		<!--close hr line, 950px IE fix-->
		<!-- Declare 950px width for IE, once again. Corrects positioning-->
		<!--BEGIN Footer Area-->
		<div class="footer">

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
					<%-- <li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a>
						|</li> --%>
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
		<!--footer close-->



	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>