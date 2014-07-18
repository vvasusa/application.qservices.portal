<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" import="java.util.*" %>


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

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>
<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script> --%>


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




<script type="text/javascript">

$(document).ready(function(){
	

	$('#form2').on("submit", function(e){
		
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



<script type="text/javascript">
	
$(document).ready(function(){
	
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
			
			$('#form').show();
			e.preventDefault(); 
		}	
		
		if( $.trim(val_pass) === '' )
		{
			
			$("#pwd").addClass('errordis');
			$("#pwd").focus();
		     
		    $('#form').show();
		    e.preventDefault(); 
			
		}	
		
		});		
});

</script>






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

</script>
 -->








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


		<!--Begin Header-->
<%-- 		<div class="">
			<!--Logo Area-->
		 <div class="span-24">
			<div class="span-10">
			<img src="${pageContext.request.contextPath}/img/logo.png" alt="" height="80px" width="250px"/>
		</div>
		 	<div style="float:right; padding-top:20px; color:#990066;">
		       <p>
		        <c:if test="${!empty loginType}">
 		         <%String name = (String) session.getAttribute("loginName");%>
		         welcome <%=name%>	
		        </c:if>
		      </p>
		 </div>	
		</div>
			<!-- FOR SAMPLE CHECK-END -->
			<ul id="navigation">
			
				<li><a href="${pageContext.request.contextPath}/index/"	id="home" title="Home"><span>home</span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/services/"	id="services_front" title="Service Catalog"><span>services catalog</span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/blog/"	id="key" title="Key Achivements"><span>key achievements </span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/requestList/"	id="myrequest" title="My Request "><span>my request</span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/contact/"	id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
 --%>		
 
 
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
		         welcome <%=name%>	
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
					id="home" title="Home"><span>home</span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services_front" title="Services Catalog"><span>service catalog </span></a></li>
					
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
		<div class="submenu">

		<ul id="sub-nav">
             <li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>	</li>       
			<li><a href="javascript:history.back()"><% out.println(request.getParameter("service")); %></a></li>
			<!-- <li><a href="#">Submit Request</a>	</li>	 -->
		</ul>

		</div>
		</div>
		
		<hr class="space" />
		<hr class="space" />
		

	<c:forEach var="user" items="${adminUser}">
		
  		<h2 style="padding-left:280px"><% out.println(request.getParameter("service")); %></h2>
		<form action="${pageContext.request.contextPath}/doneReq" method="post" commandName="requestForm" id="form2" modelAttribute="requestForm">
		
			<table	style="width: 680px; background-color: #E0EAFF; border: 1px solid #ddd; padding: 20px; font-size: 12px;"	class="contactForm">
					
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

					<td	style="width: 30%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">First Name *:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;">
					<input	type="text" name="firstName" id="firstName" value="${user.firstName}" /></td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">Last Name *:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="lastName"  id="lastName" value="${user.lastName}" /></td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">Email *:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="email"  id="emailadd"  value="${user.email}" /> <form:errors
							path="email" /></td>
					
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">Phone No *:</td>
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
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">Street:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="address"/>
							</td>
				</tr>
				
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">City:</td>
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
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">State:</td>
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
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 25px; font-weight: bold;">Country:</td>
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
						style="width: 2%; text-align: left; vertical-align: top; padding: 2px 5px 5px 25px; font-weight: bold;">Description:</td>
					<td style="text-align: left; vertical-align: top; padding: 3px;">
					<textarea name="commands" cols="0" rows="0"></textarea></td>
				</tr>

				<tr>
					<td colspan="2"
						style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All (*)
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
		<div class="hrbg_small">
		  <%@ include file="footer.jsp" %>
		</div>
		
		
			<%-- <div class="footer">

				<!--#BEGIN FOOTER AREA#-->
				<!--Declare 630px width-->
				<div class="span-8">
					<!--This text area is found directly at the bottom of the page. This area is perfect for a small navigation-->
					<!-- and some brief information about the company-->
					<div class="footer_text">
						<p>
							&copy; Copy Rights 2014 &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
						</p>
					</div>
					<!--footer_text close-->

				</div>
				<!--footer close-->

				<!--Footer navigation goes here-->
				<!--Declare 310px width-->
				<div class="span-16 last">

					<ul id="footer-nav">
						<li><a href="${pageContext.request.contextPath}/index/">Home</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/services/">Services Catalog</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/blog/">Key Achievements</a>
							|</li>
							   <li><a href="${pageContext.request.contextPath}/requestList/">My Request</a>|</li>
						<li><a href="${pageContext.request.contextPath}/contact/">Contact</a></li>
					</ul>
					<!--footer-nav close-->

					<!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
					<!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
					<!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->

				</div>
				<!--span8 close-->

			</div>
 --%>			<!--footer close-->


			
		
		<!--span24 close-->

	</div>
	<!--container close-->
</div>


	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>
