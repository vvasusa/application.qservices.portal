<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Pearson Q-service PORTAL</title>

<%-- <a href="${pageContext.request.contextPath}/logout/"> <img src="${pageContext.request.contextPath}/img/logout.jpg"></img></a> --%>


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
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery.lightbox-0.5.css"	type="text/css" media="screen, projection" />

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
<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script> --%>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>

<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script> --%>

<script type=text/javascript	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.formError.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validation.js"></script>


<!--Preload Image Over Imgs-->
<!-- 
<script type="text/javascript">
	$.preLoadImages([
			'./img/img_over/main_image1.jpg',
			'./img/img_over/main_image2.jpg', './img/img_over/main_image3.jpg',
			'./img/img_over/main_image4.jpg'

	]);
</script> -->





<script type="text/javascript">

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  

	});
</script>


<!-- 	if(!Login.match(new RegExp(temp))){
		$( ".tab1" ).replaceWith( $( ".tab" ) );
		}
	if(Login.match(new RegExp(temp))){$( ".tab" ).replaceWith( $( ".tab1" ));} 
 -->
 
<!--jQuery Sliding Login Panel Button-->

<style>

.errordis {
	background-color: #FFD9D9 !important;
	border: 1px solid #F00 !important
}
</style>




<!-- LOGIN LOGOUT VALIDATION  START-->

<script type="text/javascript">
	
$(document).ready(function(e){
	
	 var val_id = $("#val").val();
	 var value = "${data.val}";
	 var v = "Work!";
	 var value1 = "failed";
	
	 if($.trim(val_id)!=$.trim(v)){
		 
		 if($.trim(value)==$.trim(value1))
		 {
			 alert("Incorrect UserName / Password");
				
		 }
	 }
 
	 $("#val").val('Work!');
	 var val_id = $("#val").val();
	


	$('#form1').on("submit", function(e){
		
		var val_id = $("#log").val();
		var val_pass = $("#pwd").val();
		
		var value = "${data.val}";
		var value_Temp = "failed";
		if($.trim(val_pass) ===$.trim(value_Temp)){
		
	}
		$("#log").removeClass('errordis');	
		$("#pwd").removeClass('errordis');	
		
		
		 if( $.trim(val_id) === '' )
		{
		
			$("#log").addClass('errordis');
			$("#log").focus();	
			$("#pfirstName").text("Enter UserName");
			$('#form').show();
			e.preventDefault(); 
		}	
		
		if( $.trim(val_pass) === '' )
		{
			
			$("#pwd").addClass('errordis');
			$("#pwd").focus();
		    $("#pwd").text('Enter PhoneNo.'); 
		    $('#form').show();
		    e.preventDefault(); 
			
		}	
		
		
		

		<%-- <% final String message = (String) request.getAttribute("Valid"); %>
		var message= "<%=message%>	"; 
		var message1= "FAILED"; 
		var invalid="invalid";
		
		<% String invalid="invalid";%>
		if($.trim(message) == $.trim(message1) ){
		alert("Incorrect UserName / Password");
		$('#form').show();
		 
		 
		}
		else if($.trim(message) === $.trim(message1)){
			
		}  
		
			
<%
  HttpSession session1=request.getSession(false);
  if(session!=null)
   {
 request.getSession(false).removeAttribute("Valid");
	 %>

 <%
   }
  %>

	
		
		
	  

	<%-- 
	<%String valid = (String) session.getAttribute("Valid");%>
	var valid= "<%=valid%>";
	var fail= "FAILED";
	
	<% request.getSession(false).removeAttribute("Valid");%>
	<%String valid1 = (String) session.getAttribute("Valid");%>
	var valid1= "<%=valid1%>";
	
	<% request.getSession(true).setAttribute("Valid",valid1);%>
	<%String valid2 = (String) session.getAttribute("Valid");%>
	var valid2= "<%=valid2%>";
	
	if($.trim(valid)==$.trim(fail)){
		alert("Invalid UserName / Password");
	}
	 --%>
		
	});		

});

</script>

<!-- LOGIN LOGOUT VALIDATION  End-->

<%-- 		<c:if test="${valid == 'FAILED'}">
		<H1>DSFSF</H1>
			<script type="text/javascript">
			$(document).ready(function() {
				alert("dfgdg");
				
				$('#form1').on("submit", function(e){
				alert(valid);
			});
			});
			</script>
		</c:if>
 --%>




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
<!-- <script type="text/javascript">
	$(function() {
		$('.lightbox').lightBox();
	});
</script> -->
<!-- Color hover JavaScript Files -->


<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.color.js"></script>
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


<script type="text/javascript">
<%String temp = (String) session.getAttribute("MySessionId");%>
var value= "<%=temp%>	";
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->

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
					
					<form action="${pageContext.request.contextPath}/login"	method="post"  id="form1"  commandName="login" modelAttribute="user">
						<label class="color">Username:</label> 
						<input class="field" type="text" name="log" id="log" value="" size="23"  />
						<input type="hidden" name="service" id="val" name="val" value="" />  
						<!-- <p ><p style="color:red" id="pfirstName" /></p> -->
						<label	class="color" for="pwd">Password:</label> 
						<input class="field" type="password" name="pwd" id="pwd" size="23" />
						 <label>

						   <input	name="rememberme" id="rememberme" type="checkbox" value="forever" />&nbsp;Remember me</label>
						<div class="clear"></div>
						<input type="submit" name="submit" value="Login" id="login" class="bt_login" onsubmit="return validate()"/>
						<a class="lost-pwd" href="${pageContext.request.contextPath}/lostPassword">Lost your password?</a>
					</form>
				</div>
				<!--panel box2 close-->

				<!--panel box3-->
				<div class="left right">
					<h1>Not a member yet? Sign Up!</h1>
					<form action="${pageContext.request.contextPath}/register"	method="post" commandName="login" id="form" modelAttribute="user">
				 <label class="color" for="signup">Username:</label>
						 <input	class="field" type="text" name="signup" id="signup" value="" size="23" />
						  <label class="color" for="email">Email:</label>
						   <input class="field" type="text" name="email" id="email" size="23" />
						    <label>A password will be e-mailed to you.</label>  
						    <input type="submit" name="submit" value="Register" class="bt_register" />
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
	<div class="container" >

        <div class="tab" >
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
	

		<!--Begin Header-->
		<div >
			<!--Logo Area-->

			<!-- The tab on top -->
		<div class="span-24">
		<div class="span-10">
			<img src="${pageContext.request.contextPath}/img/logo.png" alt="" height="80px" width="250px"/>
		</div>
		 	<div style="float:right; padding-top:20px; color:#990066;">
		       <p>
		        <c:if test="${!empty loginType}">
 		         <%String name = (String) session.getAttribute("loginName");%>
 		          <%String type = (String) session.getAttribute("loginType");%>
		         welcome <%=name%> (<%=type%>)
		        </c:if>
		      </p>
		 </div>	 
		</div>			
					<%-- <p align="right"   style=" font-family: inherit;">
		             <font face="verdana ,helvetica"  size="2" color="#990066" >
		                  <c:if test="${!empty loginType}">
 		                     <%String name = (String) session.getAttribute("loginName");%>
		                     welcome <%=name%>	
		                  </c:if>
		             </font>
		        </p> --%>
		        
		
		                  
			 
	
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home_front" title="Home"><span>home</span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Services Catalog"><span>service catalog </span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="key" title="Key Achievements"><span> key achievements</span></a></li>

				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="myrequest" title="My Request"><span>my request</span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->

		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>
		<!--Begin Page Area, below header navigation-->
		<div class="page">
		
			<!--Declare 550px width w/ right border-->
			<div class="span-14 colborder">
				<!--Intro Image shown here, about site-->
				<div class="intro">
				<h3>How to use this Catalogue</h3> 
				
				  <img src="${pageContext.request.contextPath}/img/final.png" alt="" />
					<p>
						 <a
							href="${pageContext.request.contextPath}/services/">
							</a>
					</p>
				</div>
				<!--Close intro image-->
			</div>
			<!--Close 550px width-->

			<!--Declare 350px width, last-->
			<div class="span-9 last">
				<!--Site Slogan Area-->
				<div class="slogan">
					<h3>Our Promise</h3>
					<p>Our promise is to provide best-in-class quality services that are centered around the learner which yield measurable benefits to you. 
                       We provide the right people with the right skills to support your delivery anywhere in the world.

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


		<div class="span-24">
			<!-- Declare 950px width for IE-->


			<!--#BEGIN FEATURE#-->
			<!--The "Feature" Location is where the jQuery Slider is used. It is found directly below the logo and navigation.-->
			<!--I have included 4 different color variations for these transitions, all respectively declared in the slider.css file.-->
			<!-- ex: If you wish to change the font color, simply change the <h1 class="color"> to <h1 class="green"> or etc. null is (blue)-->
			<!-- At the moment only four color variations of text are declared, but feel free to create your own.-->

			<!--All four slides are self-rotating, every 5 seconds. -->
			<div class="slide_container">

				<!--Our left and right arrows for slide navigation-->
				<div id="leftArrow"></div>
				<div id="rightArrow"></div>

				<!--wrapper container for slide transitions, without this the overflow will be shown.-->
				<div class="wrapper">
					<ul class="wrapper">
						<!--jQuery Feature Slider-->
						<!--#1 Feature Slide-->
						<li>
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/blog/"> 
										<img alt=""	src="${pageContext.request.contextPath}/img/img_over/people1.png" width="540px"/></a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										<h1 class="color">People</h1>
										<hr class="space" />
										<hr class="space" />
										<h3 >Effective Governance</h3>
									
									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Accountable governance model that enables collaboration and integration with key groups to produce a quality deliverable</p>
								
									<div class="slide_title">
										<!--Slide Title-->
										<hr class="space" />
										<h3 >Robust Operating Model</h3>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Maximize operational efficiency by leveraging centralized shared services and resourcing models to reduce total cost of ownership</p>
									<div class="slide_title">
										<!--Slide Title-->
										<hr class="space" />
										<h3>Competency Development</h3>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Knowledge enhancement of quality team by sharing artifacts via a centralized repository and training</p>

									<div class="slide_buttons">
										<!-- <div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div> -->
										<!--slide_buttonL close-->


										<!-- <div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div> -->

									</div>
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->



							</div> <!--slide_set close-->
						</li>


					<li>
					
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/blog/"> 
										<img alt=""	src="${pageContext.request.contextPath}/img/img_over/process1.png" width="540px"/></a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										<h1 class="color">Process</h1>
										
										<h3>Early Involvement</h3>
									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Reduce project spend and cost by adopting Shift-Left quality practices to identify functional & non-functional requirements, defects etc. early in product life cycle</p>

									<div class="slide_title">
										<!--Slide Title-->
										<h3>Standardize</h3>
									</div>
									<!--slide_title close-->
									<!--slider paragraph below title-->
									<p class="slide_paragraph">Improve predictability of quality by implementing standardized test processes, quality check gates and through metrics driven management</p>
									
									<div class="slide_title">
										<!--Slide Title-->
										<h3>Reduce QA Cycle Time</h3>
									</div>
									<!--slide_title close-->
									<!--slider paragraph below title-->
									<p class="slide_paragraph">Achieve Faster Time to Market in an efficient way through ROI driven automation, Shift-Left processes and by implementing test accelerators</p>


									<div class="slide_title">
										<!--Slide Title-->
										<h3>Sustainability</h3>
									</div>
									<!--slide_title close-->
									<!--slider paragraph below title-->
									<p class="slide_paragraph">Ensure quality throughout the life span of an application by adopting practices that assure maintainability as well as reusability of assets</p>
									
									<!-- <div class="slide_buttons">
										<div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div>
										slide_buttonL close


										<div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div>

									</div> -->
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->



							</div> <!--slide_set close-->
						</li>
						
						<li>
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/blog/"> 
										<img alt=""	src="${pageContext.request.contextPath}/img/img_over/technology1.png" width="540px"/></a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										
										<h1 class="color">Technology</h1>
										<hr class="space" /><hr class="space" />
									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<h3>Optimal Tool Stack</h3>
									
									<p class="slide_paragraph">Usage of optimal tool stack across programs by consolidating, integrating and administering centrally to reduce cost and standardize reporting</p>
									<div class="slide_title">
										<!--Slide Title-->
										<hr class="space" />
										<h3 >Manage Data</h3>
									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Improve efficiencies by standardizing test data creation and managing data through a structured repository</p>
									<div class="slide_title">
										<!--Slide Title-->
										<hr class="space" />
										<h3 >Manage Q-Environment</h3>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Effective usage of quality environments through managing change and monitoring utilization to assure high availability</p>

									<!-- <div class="slide_buttons">
										<div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div> -->
										<!--slide_buttonL close-->


										<!-- <div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div> -->

									</div>
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->



						
							</li>
							
							</ul>
						</div>
							 <!--slide_set close-->
					
						<!--#2 Feature Slide-->
						<%-- <li>
							</li>
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/blog/"><img
											alt=""
											src="${pageContext.request.contextPath}/img/img_over/main_image2.jpg" /></a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										<h1 class="yellow">The Revolution Begins Now</h1>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eius tempor incididunt ut
										labore et dolore magna aliqua. Ut en ad minim veniam, quis
										nostrud.</p>
									<p class="slide_paragraph">
										<a href="#">Click Here to Upgrade App 1.0</a>
									</p>
									<p class="slide_paragraph">
										<a href="#">Click Here for Full 2.0 Install</a>
									</p>

									<div class="slide_buttons">
										<div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div>
										<!--slide_buttonL close-->


										<div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div>

									</div>
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->



							</div> <!--slide_set close-->

						</li>



						<!--#3 Feature Slide-->
						<li>
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/services/"><img
											alt=""
											src="${pageContext.request.contextPath}/img/img_over/main_image3.jpg" /></a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										<h1 class="color">Services We Provide</h1>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph"> </p>
									<p></p>

									<div class="slide_buttons">
										<div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div>
										<!--slide_buttonL close-->


										<div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div>

									</div>
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->



							</div> <!--slide_set close-->

						</li>


						<!--#4 Feature Slide-->
						<li>
							<div class="slide_set">
								<div class="image_wrapper2">
									<div class="image_placeset">
										<!--slide #1 image-->
										<a href="${pageContext.request.contextPath}/portfolio/"> <img
											alt=""
											src="${pageContext.request.contextPath}/img/img_over/main_image4.jpg" />
										</a>
									</div>
									<!--image_placeset close-->
								</div>
								<!--image_wrapper close-->



								<div class="slide_text">
									<div class="slide_title">
										<!--Slide Title-->
										<h1 class="color">Our Work is Amazing.</h1>

									</div>
									<!--slide_title close-->

									<!--slider paragraph below title-->
									<p class="slide_paragraph">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eius tempor incididunt ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis
										nostrud exercitation ullamco laboris Nullam pulvinar ultri
										malasuada quisque.</p>
									<p>Lobortis bibendum nisi et condimentum. Lorem ipsum dolor
										sit amet.</p>

									<div class="slide_buttons">
										<div class="slide_buttonL">
											<a class="inline" href="#"></a>
										</div>
										<!--slide_buttonL close-->


										<div class="slide_buttonR">
											<a class="inline2" href="#"></a>
										</div>

									</div>
									<!--slide_buttonR close-->
								</div>
								<!--article holder close-->

							</div> <!--slide_set close-->
						</li> --%>
					
				</div>
				<!--wrapper close-->

			</div>
			<!--jQuery Slider Close-->
		
		<!--span24 close-->


		<!-- Declare 950px width for IE-->
		<!--Begin Bottom Boxes Area-->
		<div class="span-24">
			<!--add hr line -->
			<div class="hrbg_underintro"></div>


			<!--Left Column Bottom Box-->
			<div class="span-7 colborder">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/mouse.png" alt="" />
					<h3>Our vision</h3>
					<p>Our vision is to keep the learner at the center of all deliveries through providing best-in-class quality services to our users</p>
					<%-- <p class="more">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p> --%>
				</div>
			</div>
			<!--Left Column Bottom Box Close-->


			<!--Middle Column Bottom Box-->
			<div class="span-7 colborder">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/logo_design.png"
						alt="" />
					<h3>We achieve</h3>
					<p>We achieve this vision by employing the right people, using the optimal technology, and following standardized process and values.</p>
					<%-- <p class="more">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p> --%>
				</div>
			</div>
			<!--Middle Column Bottom Box-->


			<!--Right Column Bottom Box-->
			<div class="span-7 last">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/ident.png" alt="" />
					<h3>Our values</h3>
					<p>Our values are the pillars of our service offerings resulting in benefits to our customers in the form of faster time to market, reduction in the cost of quality, improved predictability, enhanced learner experience and product efficacy.</p>
					<%-- <p class="more">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p> --%>

					<!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
					<!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
					<!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->

				</div>
			</div>
			<!--Right Column Bottom Box-->




		</div>
		<!--span-24 close-->
		<!--Close Bottom Box Areas-->



		<!-- Declare 950px width for IE-->
		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>
		<!--close hr line, 950px IE fix-->



		<!-- Declare 950px width for IE, once again. Corrects positioning-->
		<!--BEGIN Footer Area-->

		<div class="footer"> <%@ include file="footer.jsp" %></div>
		<!--footer close-->
	</div>
	<!--container close-->

</body>
</html>
