<%@page contentType="text/html" pageEncoding="UTF-8"%>

<?xml version="1.0"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Q-ServicePortal</title>
</head>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/validationEngine.jquery.css"	type="text/css" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/template.css"	type="text/css" charset="utf-8" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->
<script type="text/javascript">

  <%String temp = (String) session.getAttribute("MySessionId");%>

var value= "<%=temp%>	";

	alert(value); 
</script>

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
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.formError.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validation.js"></script>
<script src="${pageContext.request.contextPath}/js/cufon-yui.js"	type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js"	type="text/javascript"></script>

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





<!-- Mychanges for validation part START-->



<style>
#contact label {
	display: inline-block;
	width: 100px;
	text-align: right;
}

#contact_submit {
	padding-left: 100px;
}

#contact div {
	margin-top: 1em;
}

textarea {
	vertical-align: top;
	height: 5em;
}

.errordis {
	background-color: #FFD9D9 !important;
	border: 1px solid #F00 !important
}

.error_show {
	color: red;
	margin-left: 10px;
}

input.invalid,textarea.invalid {
	border: 2px solid red;
}

input.valid,textarea.valid {
	border: 2px solid green;
}
</style>




<script type="text/javascript">

$(document).ready(function(){
	

	$('#form1').on("submit", function(e){
		
		$("#currentPass").addClass('#error');
	
		var val_currentPass = $("#currentPass").val();
	
		var val_newPass = $("#newPass").val();
		var val_confirmPass = $("#confirmPass").val();
		var val_emailadd = $("#emailadd").val();
		var val_temp = $("#temp").val();
		
		$("#currentPass").removeClass('errordis');	
		$("#newPass").removeClass('errordis');	
		$("#confirmPass").removeClass('errordis');
		$("#emailadd").removeClass('errordis');

		
		$( "#errorcur" ).empty();
		$( "#errornew" ).empty();
		$( "#errorconfirm" ).empty();
		$( "#erroremail" ).empty();
		$( "#errorConfirm" ).empty();
		$( "#errorTemp" ).empty();
		
		
		
		if( $.trim(val_newPass) === '' )
		{
			$("#newPass").addClass('errordis');
			$("#errornew").text("Enter New Password");
			$("#newPass").focus();
			e.preventDefault();
		}	
		
		if( $.trim(val_confirmPass) === '' )
		{
			$("#confirmPass").addClass("errordis");
			$("#errorconfirm").text("Enter Conform Password");
			$("#confirmPass").focus();
			e.preventDefault();
		} 
		
		if( $.trim(val_emailadd) === '' )
		{
			$("#emailadd").addClass('errordis');
			$("#erroremail").text("Enter Email Address");
			$("#emailadd").focus();
			e.preventDefault();
		}	
		else{
		
			var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			/* var email = document.getElementById("emailadd").value;  */
			if (reg.test(val_emailadd)){ 
				
				} else{
					
					$("#emailadd").addClass('errordis');
					$("#erroremail").text("Invalid Email Format");
					$("#emailadd").focus();	
					e.preventDefault();
					
					 }
		}
		
		
		 if( $.trim(val_currentPass) === '' )
			{
				$("#currentPass").addClass('errordis');
				$("#errorcur").text("Enter Current Password");
				$("#currentPass").focus();	
				e.preventDefault();
			}	
			
		 
		 if( !($.trim(val_currentPass) === '' )) { 
		
		 if(!(val_currentPass== val_temp)){
			 $("#currentPass").addClass('errordis');
				$("#errorTemp").text("Wrong Password.. For correct password Check ur email");
				$("#currentPass").focus();
				e.preventDefault();
		 }
		 }
		 if(($.trim(val_confirmPass) === '' && $.trim(val_newPass) === '')) { }
		 else{
			
				if(!(val_newPass===val_confirmPass)){
					$("#newPass").addClass('errordis');
					$("#confirmPass").addClass("errordis");
					$("#errorConfirm").text("New and Confirm password Does't match");
					e.preventDefault();
						}
				}
	});		

});

</script>

<!-- Mychanges for validation part END-->

<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<div id="dialog" title="Basic dialog">  <p></p></div>

<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
					<h1>Welcome to Q-Service Portal</h1>
									
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
		
		
		
		


		<!--Begin Header-->
		<div class="header">
			<!--Logo Area-->
			<div class="logo">

				<img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" />
				 <p align="right" style="text-align:relative;"  style=" font-family: inherit;">
		 <font face="verdana ,helvetica"  size="2" color="#990066" >
				
		<c:if test="${!empty loginType}">
 		<%String name = (String) session.getAttribute("loginName");%>
		<i><b>welcome <%=name%></b></i>	
		</c:if>
		</font>
		</p>

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
			 
			 
			 <a href="${pageContext.request.contextPath}/logout/"> logout</a>
			 
			<!-- FOR SAMPLE CHCEK-END -->
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
					id="port" title="Request"  ><span>Request</span></a></li>
					<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page">

		<%-- 	<!--Declare 550px width w/ right border-->
			<div class="span-14 colborder">
				<!--Intro Image shown here, about site-->
				<div class="intro">
					<img src="../img/intro.gif" alt="" />
					<p>
						Find out More about our services <a
							href="${pageContext.request.contextPath}/services/">here
							&raquo;</a>
					</p>
				</div>
				<!--Close intro image-->
			</div> --%>
			<!--Close 550px width-->

			<!--Declare 350px width, last-->
			<!-- <div class="span-9 last">
				Site Slogan Area
				<div class="slogan">
					<h3>We Create Experiences.</h3>
					
				</div> -->
				<!--Close Site Slogan Area-->
				
				
				
				<div id="form1">
				
		
				<form action="${pageContext.request.contextPath}/success" method="post" id="form1" commandName="password" modelAttribute="user">

                <input type="hidden" id="temp" value="${register.tempPass }" /> 

                 <table style="width: 600px; background-color: #fff; border: 5px solid #ddd; padding: 20px; font-size: 12px;"class="contactForm">
					
					<tr>
						<td	style="width: 20%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Old Password *</td>	<td style="text-align: left; vertical-align: top; padding: 5px;"> <input	type="password" name="currentPass" id="currentPass" value="${user.firstName}" /> <p id="errorcur"/><p id="errorTemp"/>
						</td> 
						</tr>
						
					<tr>
						<td	style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">New Password *</td>	<td style="text-align: left; vertical-align: top; padding: 5px;"><input	type="password" name="newPass"  id="newPass" value="${user.lastName}" /> <p id="errornew"/>  
						</td></tr>
					<tr>
						<td	style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Confirm Password *</td>	<td style="text-align: left; vertical-align: top; padding: 5px;"><input	type="password" name="confirmPass"  id="confirmPass" value="${user.email}" /><p id="errorconfirm"/><p id="errorConfirm"/> 
						</td>
					</tr>
					<tr>
						<td	style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Alternative Email *</td> <td style="text-align: left; vertical-align: top; padding: 5px;"> <input	type="text" name="email" id="emailadd" value="${user.phoneNo}" /> <p id="erroremail"/>
						</td>
					</tr>

					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
							(*)fields are required.</td>
					</tr>
					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px;"><input
							type="submit" name="update" value="Submit" /> (Email will not be
							sent)</td>

					</tr>
				</table>
				</form>
				
				</div>
				
			</div>
			<!--Close 350px width-->


			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->



		</div>
		<!--page close-->


		


<!-- My change -->
<body>
<div class="page">





</div>

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