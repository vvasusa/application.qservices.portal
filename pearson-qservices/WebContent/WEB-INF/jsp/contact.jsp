<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Contact Us - Pearson Q-service Portal</title>



<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery.lightbox-0.5.css"	type="text/css" media="screen, projection" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />
<%-- <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css" type="text/css" media="screen, projection" /> --%>


<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<!-- <script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>  -->
<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>

<!--jQuery Sliding Login Panel Button-->

<script type="text/javascript">

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  

	});
</script>




<style>
.errordis {
	background-color: #FF8080 !important;
	border: 1px solid #F00 !important
}
</style>

<script type="text/javascript">
$(document).ready(function(){

	$('#form2').on("submit", function(e){
		
		
		var val_first_name = $("#name").val();
		var val_message = $("#message").val();
		var val_emailadd = $("#emailadd").val();
		var val_phoneNo = $("#phoneNo").val();
		
		
		var mobile = document.getElementById("phoneNo").value;      
		var pattern = /^\d{10}$/; 
		
		$("#name").removeClass('errordis');	
		$("#emailadd").removeClass('errordis');	
		$("#message").removeClass('errordis');
		$("#phoneNo").removeClass('errordis');
	
		 if( $.trim(val_first_name) === '' )
		{
		
			$("#name").addClass('errordis');
			$("#name").focus();	
			
			e.preventDefault();
			
		}	
		
		
		if( $.trim(val_emailadd) === '' )
		{
			
			$("#emailadd").addClass('errordis');
			$("#emailadd").focus();	
			
			e.preventDefault();
		}	
		
		else{
			
			var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			
			if (reg.test(val_emailadd)){ 
				
				} else{
					
					$("#emailadd").addClass('errordis');
					$("#emailadd").focus();	
					e.preventDefault();
					 }
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
		
		
		if( $.trim(val_message) === '' )
		{
			
			$("#message").addClass("errordis");
			$("#message").focus();
		   /*  $("#pfirstName").text("Enter FirstName"); */
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
	$(document).ready(function() {

		$(".btn-slide").click(function() {
			$("#panel").slideToggle("slow");
			$(this).toggleClass("active");
			return false;
		});

	});
</script> -->

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
DD_belatedPNG.fix('.tab a.open, .tab a.close, .tab ul.login li, img');
</script>
<![endif]-->


<!--LIGHTBOX USAGE -->
<!--This template makes use of jQuery Lightbox plugin, found here: http://leandrovieira.com/projects/jquery/lightbox/ -->
<!--To use Lightbox, simply reference "lightbox" as a class in the link to the picture. ex below: -->
<!-- <a href="image_large.gif" CLASS="lightbox"><img src="image.gif"></a> -->
<!--For many more uses, consult http://leandrovieira.com/projects/jquery/lightbox/  -->


<!-- Color hover JavaScript Files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.color.js"></script>
<script type="text/javascript">
	// Background color animation 
	$(document).ready(function() {
		$("ul#case_preview li img").hover(function() {
			$(this).stop().animate({
				backgroundColor : "#56BFF8"
			}, 200);
		}, function() {
			$(this).stop().animate({
				backgroundColor : "#f7f7f7"
			}, 400);
		});
		$("ul#case_preview2 li img").hover(function() {
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
					<h1>Welcome to Pearson Q-service Portal</h1>
					<h2>Are you a new client? Let's Begin.</h2>
					<p class="color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
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
					<form action="${pageContext.request.contextPath}/register"	method="post" commandName="login" id="form" modelAttribute="user">
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
		
		<%--  <p align="right" style="text-align:relative;"  style=" font-family: inherit;">
		 	<font face="verdana ,helvetica"  size="2" color="#990066" >
				<c:if test="${!empty loginType}">
 					<%String name = (String) session.getAttribute("loginName");%>
					<i><b>welcome <%=name%></b></i>	
				</c:if>
			</font>
		</p> --%>
		


		<!--Begin Header-->
		<div class="">
			<!--Logo Area-->

			<div class="span-24">
				<div class="span-10">
				<img  src="${pageContext.request.contextPath}/img/logo.png" alt="" height="80px" width="250px"/>
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
			<!--Close Logo Area-->


			<!--Begin Navigation-->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title=" Service Catalog"><span> service catalog</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="key" title="Key Achievements"><span> key achievements</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="myrequest" title="My Request "><span> my request</span></a></li>

				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact_front" title="Contact Us"><span>contact us</span></a></li>
			</ul>
			<!--Navigation close-->




		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page">
			<!--Declare 950px width w/ right border-->
			<div class="span-24">
				<!--Intro Image shown here, about site-->
				<div class="intro">
					<img
						src="${pageContext.request.contextPath}/img/contact_banner.gif"
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
					<!--#BEGIN CONTACT AREA#-->
					<!--I know if you're like me, you're thinking WTF is this guy doing using tables?-->
					<!--Well don't fret. This contact form is a dummy form that was designed by -->
					<!--http://www.easyphpcontactform.com/  -->

					<!--Why?-->
					<!--Well, a lot of the templates I design include dummy forms that still need to be fine tuned for handlers. -->
					<!--If you would like to use a free php handler for this form, just visit http://www.easyphpcontactform.com/ -->
					<!-- and replace the form below with the code found on that website, and follow his directions-->
					<!--This form below is exactly how it is viewed as a php handler-->

					<!--Replace Code Below for PHP Integration-->
					<form action="${pageContext.request.contextPath}/contactUs"	method="post" id="form2">
						<table
							style="width: 680px; background-color: #E0EAFF; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
							class="contactForm">
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Name : *</td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><input
									type="text" name="name" value="" id="name"/></td>
							</tr>
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Email : *</td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><input
									type="text" name="email" value="" id="emailadd"/></td>
							</tr>
							
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Phone No : * </td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><input
									type="text" name="phoneNo" value="" id="phoneNo" maxlength="10"/></td>
							</tr>
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Subject : </td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><input
									type="text" name="subject" value="" id="subject" /></td>
							</tr>

							<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START-->
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Country :</td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><select type="text" name="address" style="width:25%">
									    <option value="select">SELECT</option>
										<option value="volvo">UK</option>
										<option value="saab">US</option>
										<option value="mercedes">INDIA</option>
										<option value="audi">CHINA</option>
										
								</select></td>
							</tr>
							<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END-->
							<tr>
								<td
									style="width: 25%; text-align: left; vertical-align: top; padding: 10px 5px 5px 20px; font-weight: bold;">Message : *</td>
								<td style="text-align: left; vertical-align: top; padding: 5px;"><textarea
										name="message" cols="40" rows="6" id ="message"></textarea></td>
										
							</tr>

							<tr>
								<td colspan="2"
									style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All (*)
									fields are required.</td>
							</tr>
							
							<tr>
								<td colspan="2"
									style="text-align: left; vertical-align: middle; padding: 5px;"><input
									type="submit" name="submit" value="Submit" /> (Email will not
									be sent)</td>
							</tr>
						</table>
						
						
					</form>

					<!--END FORM -->
					<!--Replace Code Above for PHP Integration-->

				</div>
				<!--boxed close-->


				<!--stupid IE 6 again-->
				<!--[if IE 6]><hr class="space" /><![endif]-->


				<hr class="space" />

			</div>
			<!--span-18 close-->
			<!--#LEFT CONTENT CLOSE#-->




			<!--#BEGIN SIDEBAR#-->
			<!--This area is found to the right of the page content-->
			<!--Declare 230px width-->
		<!-- 	<div class="span-6 last">
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

				This is an IE6 workaround for problems rendering jquery sliding text-overs.
				WIthout this fix, IE6 renders "Visit Site" outside of the last image
				[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]
				<div class="boxed_bottom"></div>

				add spacing
				<hr class="space" />




			</div> -->
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
		
		
<%-- 			<div class="footer">

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
						<li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/blog/">Key Achievements</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/requestList/">My Request</a>
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
 --%>		
 	<!--footer close-->
 	
 	<div class="footer"> <%@ include file="footer.jsp" %></div> 

		
		<!--span24 close-->

	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>
