
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>
<head>

<title>Logical Media</title>

<!-- CSS Links-->
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/framework.css"
	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/site_styles.css"
	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"
	media="screen, projection" charset="utf-8" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the top of the index/ page-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slider.css"
	type="text/css" media="screen, projection" charset="utf-8" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Tools-->
<!--Custom jQuery Set-->
<!--jQuery Delay Plugin-->
<!--jQuery Image Preloader-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>


<!--Preload Image Over Imgs-->
<script type="text/javascript">
	$.preLoadImages([
			'${pageContext.request.contextPath}/img/img_over/main_image1.jpg',
			'./img/img_over/main_image2.jpg', './img/img_over/main_image3.jpg',
			'./img/img_over/main_image4.jpg'

	]);
</script>

<script type="text/javascript">
	function validation() {
		if (username = " ") { //checking if the form is empty
			document.getElementById('username').innerHTML = "*Please enter a username*";
			//return false;
			//displaying a message if the form is empty
			// alert("enter required fields");
		} else if (password = " ") { //checking if the form is empty
			document.getElementById('password').innerHTML = "*Please enter password*";
			// return false;
			//displaying a message if the form is empty
			//alert("enter required fields");
		}
		//  else
		//return true;

	}
</script>

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

<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
					<h1>Welcome to Logical Media</h1>
					<h3>Are you a new client? Let's Begin.</h3>
					<p class="color">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.</p>
					<h3>It's Simple and Cost-Effective!</h3>
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

					<form action="${pageContext.request.contextPath}/login/"
						method="post" onclick="return validation()">
						<%--  <a href = "${pageContext.request.contextPath}/success/"> value </a> --%>
						<label class="color">Username:</label> <input class="field"
							type="text" name="log" id="log" value="" size="23" /> <label
							class="color" for="pwd">Password:</label> <input class="field"
							type="password" name="pwd" id="pwd" size="23" /> <label><input
							name="rememberme" id="rememberme" type="checkbox" value="forever" />
							&nbsp;Remember me</label>
						<div class="clear"></div>
						<input type="submit" name="submit" value="Login" class="bt_login" />
						<a class="lost-pwd" href="#">Lost your password?</a>
					</form>
				</div>
				<!--panel box2 close-->



				<!--panel box3-->
				<div class="left right">
					<h1>Not a member yet? Sign Up!</h1>
					<label class="color" for="signup">Username:</label> <input
						class="field" type="text" name="signup" id="signup" value=""
						size="23" /> <label class="color" for="email">Email:</label> <input
						class="field" type="text" name="email" id="email" size="23" /> <label>A
						password will be e-mailed to you.</label> <input type="submit"
						name="submit" value="Register" class="bt_register" />

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


		</div>
		<!-- close tab -->


		<!--Begin Header-->
		<div class="header">
			<!--Logo Area-->
			<div class="logo">

				<img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" />

			</div>
			<!--Close Logo Area-->



			<!--Begin Navigation-->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home_front" title="Home"><span>home</span></a></li>
				<li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>
			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page">

			<!--Declare 550px width w/ right border-->
			<div class="span-14 colborder">
				<!--Intro Image shown here, about site-->
				<div class="intro">
					<img src="${pageContext.request.contextPath}/img/intro.gif" alt="" />
					<p>
						Find out More about our services <a
							href="${pageContext.request.contextPath}/services/">here
							&raquo;</a>
					</p>
				</div>
				<!--Close intro image-->
			</div>
			<!--Close 550px width-->

			<!--Declare 350px width, last-->
			<div class="span-9 last">
				<!--Site Slogan Area-->
				<div class="slogan">
					<h3>We Create Experiences.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
				<!--Close Site Slogan Area-->
			</div>
			<!--Close 350px width-->


			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->



		</div>
		<!--page close-->

		<!-- ******************************************************************************** -->
		<c:if test="${!empty loginType}">
			<c:if test="${loginType=='VISITOR'}">

				<div class="bar bar-header bar-light" align="right">
					<form
						action="${pageContext.servletContext.contextPath}/raiseRequest/"
						method="post" commandName="requestForm">
						<input type="hidden" name="service" value="QSERVICE" /> <input
							type="hidden" name="serviceID" value="QT001" /> <input
							type="submit" value="SubmitRequest" align="right">
					</form>

				</div>
			</c:if>
		</c:if>
		<!-- <h1>
			<spring:message code="label.requestservice.servicename" />
		</h1> -->

		<!-- ******************************************************************************** -->
		<div class="span-24">
			<p>
			<h3 style="color: #900000">Q-Assesment for Integrating Teams</h3>
			<a href="${pageContext.servletContext.contextPath}/raiseRequest/">
			</a>
			</p>

			<h3 class="myNewStyle" style="color: #3399FF">Key Features
				Offerings</h3>


			<p>
				Analyze and study a Q-Organizations undergoing a merger in the areas
				of people, process and technology to assess maturity of current
				operating levels and to identify potential impact areas.<br>
					Deploy QCoE's proprietary QA assessment framework to evaluate
					maturity of target Q-organization highlighting opportunity areas to
					improve and vice-versa. 
				<br> Refine or redefine QA process for merging organizations. 
				<br>Build Quality Maturity Implementation Roadmap including
					tools consolidation & environment management. 
			</p>


			<h3 style="color: #3399FF">Tools & Accelerators</h3>
			<p>
				QCoE Maturity Framework based on CMMi and TMMi that will help in
				assessing the current maturity of the organization.<br>
					Templatized assessment plan that to perform multi-fold assessment
					and derive a roadmap. 
				<br>Reusable evaluation artifacts to ensure consistent
					assessment methodology. 
			</p>

			<h3 style="color: #3399FF">Where this service would be
				benefiting</h3>
			<p>
				For smooth integration of Quality Organizations.<br> Assessment
					of a prospective organization's quality practices as part of Merger
					& Acquisition process. 
				<br>To evaluate current maturity of the quality organization
					towards continuous improvement. 
			</p>

			<h3 style="color: #3399FF">Project Names where services were
				offered</h3>
			<p>1.Wall Street English</p>

			<h3 style="color: #3399FF">Key Highlights from Projects Executed</h3>
			<p>
				1.Clear understanding of the target quality organization's strengths
				and improvement areas.<br> 2.Identification of tools,
					accelerators & frameworks that will help improve the maturity of
					the target organization and QCoE 
				<br>3. Detailed transformation roadmap to achieve the desired
					maturity level and alignment with business goals. 
				<br> 4.Increased maturity of the overall Quality organization.
				
			</p>



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
							&copy; <a href="#">Logical Media</a> is available 24/7 365 days a
							year. We are currently located in Toledo, OH. &nbsp;&nbsp; |
							&nbsp;&nbsp;Need a quote? <a href="#">Click Here</a>.
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
