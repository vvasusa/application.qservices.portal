<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" import="java.util.*" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<?xml version="1.0"?>
<title>Insert title here</title>
</head>
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

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  

	});
</script>

<script type="text/javascript">
	$.preLoadImages([
			'${pageContext.request.contextPath}/img/img_over/main_image1.jpg',
			'./img/img_over/main_image2.jpg', './img/img_over/main_image3.jpg',
			'./img/img_over/main_image4.jpg'

	]);
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

background-color: #FFD9D9  !important;
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



<!-- ****************************************************************************************************** -->
<!-- 

<script type="text/javascript">

$(document).ready(function(){

	$('#form1').on("submit", function(e){
		$("#firstName").addClass('#error');
		alert('jhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjh!');
		var val_first_name = $("#firstName").val();
		var val_last_name = $("#lastName").val();
		var val_phoneNo = $("#phoneNo").val();
		var val_emailadd = $("#emailadd").val();

		
		$("#firstName").removeClass('errordis');	
		$("#lastName").removeClass('errordis');	
		$("#phoneNo").removeClass('errordis');
		$("#emailadd").removeClass('errordis');

		if( $.trim(val_first_name) === '' )
		{
			
			$("#firstName").addClass("errordis");
			
			$("#firstName").focus();
			addedClass = "green";
			e.preventDefault();
		}

		
		
		 if( $.trim(val_last_name) === '' )
		{
				
			$("#lastName").addClass('errordis');
			$("#lastName").focus();	
			e.preventDefault();
		}	
		
		
		if( $.trim(val_phoneNo) === '' )
		{
				
			
			$("#phoneNo").addClass('errordis');
			$("#phoneNo").focus();	
			e.preventDefault();
		}	
		
		if( $.trim(val_emailadd) === '' )
		{
			
			
			$("#emailadd").addClass('errordis');
			$("#emailadd").focus();	
			e.preventDefault();
		}	
		else{return true;}

	});		

});

</script> -->








<script type="text/javascript">

$(document).ready(function(){

	$('#form1').on("submit", function(e){
		$("#firstName").addClass('#error');
		
		var val_first_name = $("#firstName").val();
		var val_last_name = $("#lastName").val();
		var val_phoneNo = $("#phoneNo").val();
		var val_emailadd = $("#emailadd").val();
		/* $("lastName").remove(".text"); */
		
		var mobile = document.getElementById("phoneNo").value;      
		var pattern = /^\d{10}$/; 
		
	
		
		
		$("#firstName").removeClass('errordis');	
		$("#lastName").removeClass('errordis');	
		$("#phoneNo").removeClass('errordis');
		$("#emailadd").removeClass('errordis');
		
		$( "#plastname" ).empty();
		$( "#errorPno" ).empty();
		$( "#errorEmail" ).empty();
		$( "#pfirstName" ).empty();
		/* validator.resetForm(); $('lastName.error').remove();
		
		
		$(this).replaceWith("<h1>enter lastname</h1>");*/
		
		 if( $.trim(val_last_name) === '' )
		{
		
			$("#lastName").addClass('errordis');
			$("#lastName").focus();	
		    $("#plastname").text("Enter LastName");
			$( "#lastName" ).empty();
			
			e.preventDefault();
			
		}	
		
		
		
		if( $.trim(val_phoneNo) === '' )
		{
				
			
			$("#phoneNo").addClass('errordis');
			$("#errorPno").text('Enter PhoneNo.');
			$("#phoneNo").focus();
			e.preventDefault();
		}	
		

		
		
		if (!pattern.test(val_phoneNo)) {         
			/* 		alert("It is not valid mobile number. Enter 10 digits number!");    */
					$("#phoneNo").addClass('errordis');
					$("#phoneNo").focus();	
					$("#errorPno").text('Enter 10 digit PhoneNo');
					e.preventDefault();  
					      
					} 
		
		if( $.trim(val_emailadd) === '' )
		{
			
			
			$("#emailadd").addClass('errordis');
			$("#emailadd").focus();	
			$("#errorEmail").text('Enter Email Id.');
			e.preventDefault();
		}	
		
		else{
		
			var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			/* var email = document.getElementById("emailadd").value;  */
			if (reg.test(val_emailadd)){ 
				
				} else{
					
					$("#emailadd").addClass('errordis');
					$("#emailadd").focus();	
					$("#errorEmail").text('Invalid Email Id');
					e.preventDefault();
					
					 }
		}
		
		
		if( $.trim(val_first_name) === '' )
		{
			
			$("#firstName").addClass("errordis");
			$("#firstName").focus();
		    $("#pfirstName").text("Enter FirstName");
			e.preventDefault();
		}


	});		

});

</script>




<!-- ************************************************************************************************************** -->

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
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services_front" title="Our Services"><span>our services</span></a></li>
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
<body>
	<%-- <fmt:bundle basename="com.sample.config.sample">
  
  </fmt:bundle> --%>
  

	<c:forEach var="user" items="${adminUser}">
		

		<%-- <a href="${pageContext.request.contextPath}/index/">HomePage</span></a>
		<a href="${pageContext.request.contextPath}/logout/"> logout</a>

 --%>
		<form action="${pageContext.request.contextPath}/doneReq"
			method="post" commandName="requestForm" id="form1" modelAttribute="requestForm">
			<table
				style="width: 0px; background-color: #fff; border: 1px solid #ddd; padding: 50px; font-size: 12px;"
				class="contactForm">



<tr><td>
<input	type="hidden" name="req_ServiceName" value="${user.requestName}"  readonly/>
<input	type="hidden" name="req_ServiceID" value="${user.requestID}" readonly /></td>
</tr>
				<%-- <tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">ServiceName:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="hidden" name="req_ServiceName" value="${user.requestName}"  readonly/></td>
				</tr>

				<tr>

					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">ServiceID:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="hidden" name="req_ServiceID" value="${user.requestID}" readonly /></td>
				</tr> --%>
				<tr>

					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">FirstName:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="firstName" id="firstName" value="${user.firstName}" /></td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">LastName:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="lastName"  id="lastName" value="${user.lastName}" /></td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="email"  id="emailadd"  value="${user.email}" /> <form:errors
							path="email" /></td>
					
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="phoneNo" id="phoneNo" value="${user.phoneNo}" maxlength="10" /></td>
				</tr>

				<!-- <tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Subject:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="subject" value="" /></td>
				</tr> -->

				<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START-->
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Street:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="address"/>
							</td>
				</tr>
				
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">City:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><select
						type="option" name="address" style='width: 145px;'>
						<option value=" ">Select</option>
							<option value="Coimbatore">COIMBATORE</option>
							<option value="Chennai">CHENNAI</option>
							<option value="Delhi">DELHI</option>
							<option value="Bangalore">BANGALORE</option>
					</select>
							</td>
				</tr>
				
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">State:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;">
					<select	type="option" name="address" style='width: 145px;'>
				           	<option value=" ">Select</option>
							<option value="Tamilnadu">TAMILNADU</option>
							<option value="Kerala">KERALA</option>
							<option value="Karnataka">KARNATAKA</option>
							<option value="Andhra">ANDHRA</option>
					</select>
							</td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Country:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;">
					<select	type="option" name="address" style='width: 145px;'>
							<option value=" ">Select</option>
							<option value="India">INDIA</option>
							<option value="US">US</option>
							<option value="UK">UK</option>
							<option value="China">CHINA</option>
					</select>
							</td>
				</tr>
				<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END-->
				<tr>
					<td
						style="width: 2%; text-align: left; vertical-align: top; padding: 2px 5px 5px 5px; font-weight: bold;">Message:</td>
					<td style="text-align: left; vertical-align: top; padding: 3px;">
					<textarea name="commands" cols="0" rows="0"></textarea></td>
				</tr>

				<tr>
					<td colspan="2"
						style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
						fields are required.</td>
				</tr>
				<tr>
					<td colspan="2"
						style="text-align: left; vertical-align: middle; padding: 5px;">
						<input	type="submit" name="update" value="Submit" /> (Email will not be sent)</td>
				</tr>
			</table>
		</form>
	</c:forEach>
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
		<!--span24 close-->

	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>
