<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<title>Pearson Q-service PORTAL</title>


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
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery.lightbox-0.5.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Slider-->
<!--Custom jQuery Set-->
<!--jQuery Lightbox-->
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.expander.js">
	
</script>
<!--jQuery Sliding Login Panel Button-->



<script type="text/javascript">

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  


	/* if(!Login.match(new RegExp(temp))){
		$( ".tab1" ).replaceWith( $( ".tab" ) );
		}
	if(Login.match(new RegExp(temp))){$( ".tab" ).replaceWith( $( ".tab1" ));} */
	});
</script>


<script type="text/javascript">
	$(document).ready(function() {
		

		/* 
		$('#t1').text(function() {
		    return $(this).text().substring(0, 50);
		});
		 */

		/*  $('#t1').expander({
			    slicePoint:       100,  // default is 100
			    expandPrefix:     ' ', // default is '... '
			    expandText:       '[...]', // default is 'read more'
			    collapseTimer:    5000, // re-collapses after 5 seconds; default is 0, so no re-collapsing
			    userCollapseText: '[-hide]'  // default is 'read less'
			  }); */

		$('#txt1').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt2').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt3').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt4').expander({
			slicePoint : 90,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt5').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt6').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt7').expander({
			slicePoint : 85,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt8').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt9').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt10').expander({
			slicePoint : 90,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt11').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt12').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt13').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt14').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt15').expander({
			slicePoint : 95,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});
		$('#txt16').expander({
			slicePoint : 85,
			collapseTimer:5000,
			expandText : '+ More',
			userCollapseText : '[ -Less]'
		});

	});
</script>


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
					<h1>Welcome to Pearson Q-service Portal</h1>
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
					<!-- Register Form -->
					
					<form action="${pageContext.request.contextPath}/register"
						method="post" commandName="login" id="form" modelAttribute="user">
						<label class="color" for="signup">Username:</label> <input
							class="field" type="text" name="signup" id="signup" value=""
							size="23" /> <label class="color" for="email">Email:</label> <input
							class="field" type="text" name="email" id="email" size="23" /> <label>A
							password will be e-mailed to you.</label> <input type="submit"
							name="submit" value="Register" class="bt_register" />
					</form>
					
				<!-- 	<label class="color" for="signup">Username:</label> <input
						class="field" type="text" name="signup" id="signup" value=""
						size="23" /> <label class="color" for="email">Email:</label> <input
						class="field" type="text" name="email" id="email" size="23" /> <label>A
						password will be e-mailed to you.</label> <input type="submit"
						name="submit" value="Register" class="bt_register" />
 -->
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
        <%-- <p align="right">	
				
		<c:if test="${!empty loginType}">
 		<%String name = (String) session.getAttribute("loginName");%>
		welcome <%=name%>	
		</c:if>
		</p> --%>
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
				<a href="${pageContext.request.contextPath}/index/"><img
					src="${pageContext.request.contextPath}/img/logo.jpg" alt="" /></a>
			</div>
			<!--Close Logo Area-->


			<!--Begin Navigation-->
			<ul id="navigation">
				
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services_front" title="Our Services"><span>our
							services</span></a></li>
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
				<%-- <div class="intro">
					<img
						src="${pageContext.request.contextPath}/img/services_banner.gif"
						alt="" />
				</div> --%>
				<!--Close intro image-->
			</div>
			<!--Close 950px width-->


			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->

			<!--#BEGIN LEFT CONTENT PAGE#-->
			
				<!-- Boxed Class adds background image and sets padding 20px on all sides.-->
				<div class="boxed_page" >

					<!--#PAGE INTRO#-->
					<!--Brief Info -->
					<p>
					<h2>The Pearson Q-service portal is providing the following services
						for customers.. For more information please click on services...</h2>
					</p>
<div class="hrbg_small"></div>
				</div>
				<!--boxed close-->

				<!--add spacing-->
			

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				
		<div class="span-24">
				<div class="span-6" >
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
                        <!--Service Image-->
						<!--  <p><img src="./img/icons/site_analysis.png" class="left" alt="" /> -->
						<!--Brief Info on Service-->
                  <div class="serhead"> 
						<a href="${pageContext.request.contextPath}/QAssesment/"><input type="image" src="${pageContext.request.contextPath}/img/qasses.png" alt="Raise Your Request Here.." /></a></div>
						<div id="txt1" class="text" >
							<p>${serviceIntro.qass}</p>
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
					
							<!--Service Image-->
							<!-- <p><img src="./img/icons/design.png" class="left" alt="" /> -->
							<!--Brief Info on Service-->
							
							<div class="serhead"> <a href="${pageContext.request.contextPath}/TestProgram/">Test Program</a></div>
							<div id="txt2" class="texter" >
								<p>${serviceIntro.testprogram}</p>
						</div>
					</div>
					<!--boxed_page close-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 ">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">

						<!--Service Title-->
						
							<div class="serhead"><a href="${pageContext.request.contextPath}/Middleware/">Middleware/ESB</a></div>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/lc.png" class="left" alt="" /> -->
							<div id="txt3" class="texter" >
								${serviceIntro.middlewareESB}</div>
							
							<!-- </p> -->
						</div>
					</div>
					<!--Brief Info on Service-->
				
				<!--span-6 close-->

				<!--add spacing-->
				

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
				
							<div class="serhead"><a href="${pageContext.request.contextPath}/DataIntegration/">DataIntegration Testing</a></div>
							<!--Service Image-->
							<!--  <p><img src="./img/icons/omar.png" class="left" alt="" /> -->
								<div id="txt4" class="texter" >
								<font style="FONT: 12px/18px Tahoma, Arial, sans-serif;">
								${serviceIntro.dataIntegrationTesting}</font>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
			
				</div>
				<!--span-6 close-->

		<div class="span-24">

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="serhead"><a href="${pageContext.request.contextPath}/Automated/">Automated Testing</a></div>
					        <!--Service Image-->
							<!-- <p><img src="./img/icons/psd.png" class="left" alt="" /> -->
							<div id="txt5"  class="texter" >
								 ${serviceIntro.automatedTesting}</a>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 ">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
							<div class="serhead"><a href="${pageContext.request.contextPath}/Mobile/"> Mobile Testing</a></div>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/ecom.png" class="left" alt="" /> -->
							<div id="txt6"  class="texter" >
							 
								${serviceIntro.mobileTesting}
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--add spacing-->
				

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
					
						<div class="serhead"><a href="${pageContext.request.contextPath}/OnlineEcommerce/">Online eCommerce & Content Management</a></div>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/search.png" class="left" alt="" /> -->
							<div id="txt7" class="texter" >
							${serviceIntro.onlineeCommerce}	 </a>
							
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
						<!--Service Title--><div class="serhead"><a href="${pageContext.request.contextPath}/OracleERP/">Oracle ERP Testing</a></div>
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
							<div id="txt8"  class="texter" >
							
							<p style="font-family: inherit; font-size: 100%; font-style: inherit; font-weight: inherit;">
								${serviceIntro.oracleERPTesting}</p>
								
							</a>
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

</div>
				<!--#BEGIN SERVICE BOX#-->
				
			<div class="span-24">
				
				<!--Declare 230px width-->
				<div class="span-6 ">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						<div class="serhead"><a href="${pageContext.request.contextPath}/SalesForce/">Sales Force Testing</a></div>
							<!--Service Image-->
							<!--   <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<div id="txt9"  class="texter" >
								${serviceIntro.salesForceTesting}
						</div>
					</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
							<!--Service Image-->
							<!--  <p><img src="./img/icons/search.png" class="left" alt="" /> -->
							<div class="serhead">	<a href="${pageContext.request.contextPath}/Performance/">Performance Testing</a></div>
							<div id="txt10"  class="texter" >
								${serviceIntro.performanceTesting}
								 </div>
						</div>
					</div>
					<!--Brief Info on Service-->
				
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
							<div class="serhead"><a href="${pageContext.request.contextPath}/Security/">Security Testing</a></div>
							<div id="txt11"  class="texter" >
							${serviceIntro.securityTesting} </div>
						
						</div>
					</div>
					<!--Brief Info on Service-->
			
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						
							<!--Service Image-->
							<!--  <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<div class="serhead"><a href="${pageContext.request.contextPath}/Compliance/">Compliance Testing</a></div>
							<div id="txt12"  class="texter" >
									${serviceIntro.complianceTesting} </div>
						
						</div>
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


		</div>

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				
				
				
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
							<!--Service Image-->
							<!-- <p><img src="./img/icons/search.png" class="left" alt="" /> -->
						<div class="serhead"><a href="${pageContext.request.contextPath}/InfraStructure/">Infrastructure Testing</a></div>
						<div id="txt13"  class="texter" >
								${serviceIntro.infrastructureTesting} </div>
						
						</div>
					</div>
					
					
					
					<!--Brief Info on Service-->
				
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
						
							<!--Service Image-->
							<!-- <p><img src="./img/icons/cd.png" class="left" alt="" /> -->
						<div class="serhead">	<a href="${pageContext.request.contextPath}/PerformanceEngineering/">Performance Engineering</a></div>
						<div id="txt14"  class="texter" >
									${serviceIntro.performancEngineering}</div>
				
						</div>
				
					<!--Brief Info on Service-->
				</div>
				<!--span-6 close-->


				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 ">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						<!--Service Title-->
							<!--Service Image-->
							<!--  <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<div class="serhead"> <a href="${pageContext.request.contextPath}/TestData/">Test Data Management</a></div>
							<div id="txt15"  class="texter" >${serviceIntro.testDataManagement}
							
						</div>
						</div>
					</div>
					<!--Brief Info on Service-->
				
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


			

				<!--#BEGIN SERVICE BOX#-->
				<!--Declare 230px width-->
				<div class="span-6 last">
					<!--Boxed style with 20px padding-->
					<div class="boxed_page">
						
							<!--Service Title-->
							
							<!--Service Image-->
							<!-- <p><img src="./img/icons/folder.png" class="left" alt="" /> -->
							<!--  <div class="texter">     -->
							<div class="serhead"><a href="${pageContext.request.contextPath}/TestEnvironment/">Test Environment Management</a></div>
							<div id="txt16"  class="texter" >
								${serviceIntro.testEnvironment}	</div>
				
						</div>

					</div>
					<!--Brief Info on Service-->
				
				<!--span-6 close-->

				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


			

		
		</div>
			<!--span-18 close-->
			<!--#LEFT CONTENT CLOSE#-->




			<!--#BEGIN SIDEBAR#-->
			<!--This area is found to the right of the page content-->
			<!--Declare 230px width-->
	<!-- 		<div class="span-6 last">
				Sidebar Boxed Style with 20px padding
				<div class="boxed_top"></div>
				<div class="boxed">

					#Begin Latest News Title
					<h3 class="grey">Latest News</h3>
					add spacing
					<hr class="space" />

					Entry Title
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					meta info
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					brief intro
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					close entry

					add hr line
					<hr />

					Entry Title
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					meta info
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					brief intro
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					close entry

					add hr line
					<hr />

					Entry Title
					<h5>Lorem Ipsum Dolor Sit Amet</h5>
					meta info
					<div class="meta">
						11 / 14 / 09 &nbsp;|&nbsp; <span class="color">design, html</span>
					</div>
					brief intro
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt...</p>
					close entry


				</div>
				boxed close
			<div class="boxed_bottom"></div> 

				add spacing
				<hr class="space" />

				Sidebar Boxed Style with 20px padding
				<div class="boxed_top"></div>
				<div class="boxed">
					Sub Sidebar Title
					<h2>PDF Available</h2>
					text
					<p>Lorem ipsum dolor sit amet contetur adipisicing elit, sed do
						eiusmodarel tempor incididunt ut labore et dolor magna aliqua. Ut
						enim ad minimilo veniam, quis nostrud exercitational ullamco lorem
						ipsum</p>
				</div> 
				boxed close
				This is an IE6 workaround for problems rendering jquery sliding text-overs.
				WIthout this fix, IE6 renders "Visit Site" outside of the last image
				[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]

				<div class="boxed_bottom"></div>


				<!--add spacing
				<hr class="space" />

			</div> -->
			<!--span-6 close-->
			<!--#CLOSE SIDEBAR#-->






	
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
						<li><a href="${pageContext.request.contextPath}/requestList/">Request</a>
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
