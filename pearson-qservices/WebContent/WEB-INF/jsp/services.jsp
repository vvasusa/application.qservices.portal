<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
<head>

<title>Our Services - Logical Media</title>

<!-- CSS Links -->
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
	type="text/css" media="screen, projection" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/site_styles.css"
	type="text/css" media="screen, projection" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"
	media="screen, projection" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.lightbox-0.5.css"
	type="text/css" media="screen, projection" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the middle of the index/ page-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slider.css"
	type="text/css" media="screen, projection" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Slider-->
<!--Custom jQuery Set-->
<!--jQuery Lightbox-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lightbox.js"></script>


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
<script src="${pageContext.request.contextPath}/js/cufon-yui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js" type="text/javascript"></script>
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

<!--LIGHTBOX USAGE -->
<!--This template makes use of jQuery Lightbox plugin, found here: http://leandrovieira.com/projects/jquery/lightbox/ -->
<!--To use Lightbox, simply reference "lightbox" as a class in the link to the picture. ex below: -->
<!-- <a href="image_large.gif" CLASS="lightbox"><img src="image.gif"></a> -->
<!--For many more uses, consult http://leandrovieira.com/projects/jquery/lightbox/  -->
<script type="text/javascript">
	$(function() {
		$('.lightbox').lightBox();
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
					<label class="color">Username:</label> <input class="field"
						type="text" name="log" id="log" value="" size="23" /> <label
						class="color" for="pwd">Password:</label> <input class="field"
						type="password" name="pwd" id="pwd" size="23" /> <label><input
						name="rememberme" id="rememberme" type="checkbox" value="forever" />
						&nbsp;Remember me</label>
					<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					<a class="lost-pwd" href="#">Lost your password?</a>
				</div>
				<!--panel box2 close-->

				<!--panel box3-->
				<div class="left right">
					<h1>Not a member yet? Sign Up!</h1>
					<!-- Register Form -->
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
<a href="${pageContext.request.contextPath}/logout/"><b>LOGOUT</b></a>

		<!--Begin Header-->
		<div class="header">
			<!--Logo Area-->
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index/"><img
					src="${pageContext.request.contextPath}/img/logo.jpg" alt="" /></a>
			</div>
			<!--Close Logo Area-->


			<!--Begin Navigation-->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services_front" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="port" title="Request"><span>Request</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


			<!--Sub-Navigation found directly below the main navigation bar.-->
			<div class="submenu">
				<ul id="sub-nav">
					<li><a href="${pageContext.request.contextPath}/services/"
						class="selected">Services Home</a></li>
					<li><a href="${pageContext.request.contextPath}/sub_serv/">E-Commerce</a></li>
					<li><a href="${pageContext.request.contextPath}/sub_serv/">PSD
							2 HTML</a></li>
					<li><a href="${pageContext.request.contextPath}/sub_serv/">SEO</a></li>
					<li><a href="${pageContext.request.contextPath}/sub_serv/">Online
							Marketing</a></li>
					<li><a href="${pageContext.request.contextPath}/sub_serv/">Site
							Analysis</a></li>



					</form>
				</ul>
				<!--sub-nav close-->

			</div>
			<!--submenu close-->

		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page_services">

			<!--Declare 950px width w/ right border-->
			<div class="span-24">
				<!--Intro Image shown here, about site-->
				<div class="intro">
					<img
						src="${pageContext.request.contextPath}/img/services_banner.gif"
						alt="" />
				</div>
				<!--Close intro image-->
			</div>
			<!--Close 950px width-->



			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->

			<!--#BEGIN LEFT CONTENT PAGE#-->
			<div class="span-18">
				<!-- Boxed Class adds background image and sets padding 20px on all sides.-->
				<div class="boxed_page">

					<!--#PAGE INTRO#-->
					<!--Brief Info -->
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt ut labore et dolor magna aliqua. Ut
						enim ad minimilo veniam, quis nostrud exercitational ullamco lorem
						ipsum</p>

				</div>
				<!--boxed close-->

				<!--add spacing-->
				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">

						<!--Service Title-->
						<div class="texter">
							<h5>Q-Assesment</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/site_analysis.png" class="left" alt="" /> -->
							<!--Brief Info on Service-->

							<a href="${pageContext.request.contextPath}/QAssesment/"> Q-
								Assessment for Integrating Teams provides quality consulting to
								organizations undergoing integrations or consolidation such as
								Mergers & Acquisition. It heps QA organization achieve best in
								class operating levels by strategizing and redefining their QA
								processes. </a>
							<%-- <form action="${pageContext.request.contextPath}/request/" method="get">
                     <input type="submit" value="Request" ></form> --%>
							</p>
						</div>
					</div>
					<!--boxed_page close-->
				</div>
				<!--span-6 close-->

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">

						<!--Service Title-->
						<div class="texter">
							<!-- <h5>Test Program Management</h5> -->
							<h5>Test Program..</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/design.png" class="left" alt="" /> -->
							<!--Brief Info on Service-->
							<a href="${pageContext.request.contextPath}/TestProgram/">
								Test Program Management is an advisory service offering that
								helps organizations create QA Policies, Strategies, Plans and
								Processes. This offering enables QA teams to effectively manage
								multiple projects while maintaining standard deliverables. </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>

						</div>
					</div>
					<!--boxed_page close-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">

						<!--Service Title-->
						<div class="texter">
							<h5>Middleware / ESB Testing</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/lc.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Middleware/">
								Middleware/ ESB Testing validates an organization's middleware
								architecture to establish a robust communication layer between
								the application and the back-end systems. It improves business
								agility by increasing the lifespan of applications ensuring
								quality & scalability </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							<!-- </p> -->
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--add spacing-->
				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>DataIntegration Testing</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/omar.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/DataIntegration/">
								Data Integration Testing enables organizations to maintain data
								integrity during transition of data from one database system to
								the other by performing data verification and validation. It
								helps in establishing increased levels of trust for data across
								the organization by enuring that the integrated data is correct,
								complete and up-to-date </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Automated Testing</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/psd.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Automated/">
								Automated Testing helps agile centric IT organizations produce a
								software that is effective, efficient and faster by employing
								right tools, frameworks, strategy and personnel. Higher
								automation coverage reduces manual effort and improves the
								quality of testing. </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Mobile Testing</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/ecom.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Mobile/"> Mobile
								Testing provides an integrated solution for testing mobile
								native applications using agile based test framework. Testing is
								performed on real devices without compromising on the quality by
								leveraging tools and centralized repository consisting mobile
								specific test scripts across all mobile platform projects. </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--add spacing-->
				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Online eCommerce & Content Management</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/search.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/OnlineEcommerce/">
								QCoE - Online ecommerce and Content Management provides testing
								solutions to the growing volume of e-commerce businesses
								requiring higher availability, scalability, and facilitates
								enhanced online shopping experience. Our domain-specific
								customized solutions along with performance, security and
								usability testing provides cost-effective implementations that
								accelerate the product life cycle, prevent security lapses such
								as identity theft and ensure efficient load handling. </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Oracle ERP Testing</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/OracleERP/">
								Oracle ERP Testing validates an organizations Oracle ERP package
								implementations and customizations towards a business need by
								testing functional coverage, performance, availability and
								scalability areas. It accelerates the QA process by allowing
								faster delivery of your business-critical Oracle ERP projects. </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Sales Force Testing</h5>
							<!--Service Image-->
							<!--   <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/SalesForce/">
								Sales Force Testing provides organizations a full scale CRM
								testing from opportunity creation to post-sale functionality for
								both standard and highly customized objects. It covers all
								critical testing domains of SalesForce.Com by providing a full
								suite of solutions </a>
							<form action="${pageContext.request.contextPath}/request/"
								method="get">
								
							</form>
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Performance Testing</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/search.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Performance/">
								Performance Testing identifies performance bottlenecks in a
								software and helps in deploying scalable & reliable solution
								across Pearson applications to enhance user experience on sites
								and web apps. It improves the speed and consistency of a system
								under a particular workload. </a>
							
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Security Testing</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Security/">
								Security Testing identifies risk and compliance level of an
								application with respect to Pearson policies & assessment. It
								validates security vulnerabilities in Pearson web applications
								and assures that these applications behave as intended </a>
							
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Compliance Testing</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/Compliance/">
								Compliance Testing implements audit activities focused on
								performing reviews and testing of application change activity to
								ensure that all changes adhere to the established process and
								control requirements of Pearson’s Sarbanes-Oxley (SOX)
								Compliance Program. It empowers organizations to achieve
								conformance across the entire IT landscape. </a>
							
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Infrastructure Testing</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/search.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/InfraStructure/">
								Infrastructure Testing helps organizations to validate various
								infrastructure components across all the layers of its IT
								architecture. It ensures that the individual Infrastructure
								components which are interlinked and interfaced with multiple
								other components are effectively tested. </a>
							
							</p>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Performance Engineering</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
							<a
								href="${pageContext.request.contextPath}/PerformanceEngineering/">
								Performance Engineering services aid IT Organizations in
								designing and developing software with optimal performance,
								scalability, availability and accessibility by evaluating
								requirements of the product, technical architecture, design, and
								implementation. It reduces hardware and software costs by
								improving overall system performance. </a>
							
							</p>
						</div>

					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="texter">
							<h5>Test Data Management</h5>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<a href="${pageContext.request.contextPath}/TestData/"> Test
								Data Management enables QA organizations establish standard
								guidelines and strategy for test data creation and maintenance.
								It helps in improving the quality and reusability of test data.
							</a>
							
						</div>


					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				<hr class="space" />

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<div class="texter">
							<!--Service Title-->
							<h5>Test Environment Management</h5>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<!--  <div class="texter">     -->
							<a href="${pageContext.request.contextPath}/TestEnvironment/">
								Test Environment Management supports an organization in
								establishing dedicated production-like environments for
								effective test execution. It ensures test environment
								optimization by driving environment planning, coordination,
								monitoring and maintenance activities. </a>
							
							</p>

						</div>

					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				<hr class="space" />

			</div>
			<!--span-18 close-->
			<!--#LEFT CONTENT CLOSE#-->




			<!--#BEGIN SIDEBAR#-->
			<!--This area is found to the right of the page content-->
			<!--Declare 230px width-->
			<div class="span-6 last">
				<!--Sidebar Boxed Style with 20px padding-->
				<div class="boxed_top"></div>
				<div class="boxed">

					<!--#Begin Latest News Title-->
					<h3 class="grey">Latest News</h3>
					<!--add spacing-->
					<hr class="space" />

					<!--Entry Title-->
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					<!--meta info-->
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					<!--brief intro-->
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					<!--close entry-->

					<!--add hr line-->
					<hr />

					<!--Entry Title-->
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					<!--meta info-->
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					<!--brief intro-->
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					<!--close entry-->

					<!--add hr line-->
					<hr />

					<!--Entry Title-->
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					<!--meta info-->
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					<!--brief intro-->
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					<!--close entry-->


				</div>
				<!--boxed close-->
				<div class="boxed_bottom"></div>

				<!--add spacing-->
				<hr class="space" />

				<!--Sidebar Boxed Style with 20px padding-->
				<div class="boxed_top"></div>
				<div class="boxed">
					<!--Sub Sidebar Title-->
					<h2>PDF Available</h2>
					<!--text-->
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt ut labore et dolor magna aliqua. Ut
						enim ad minimilo veniam, quis nostrud exercitational ullamco lorem
						ipsum</p>
				</div>
				<!--boxed close-->
				<!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
				<!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
				<!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->

				<div class="boxed_bottom"></div>


				<!--add spacing-->
				<hr class="space" />

			</div>
			<!--span-6 close-->
			<!--#CLOSE SIDEBAR#-->






		</div>
		<!--page close-->


		<!-- Declare 950px width for IE-->
		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>
		<!--close hr line, 950px IE fix-->



		<!-- Declare 950px width for IE, once again. Corrects positioning-->
		<!--BEGIN Footer Area-->
		<div class="span-24">
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
		<!--span24 close-->

	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>
