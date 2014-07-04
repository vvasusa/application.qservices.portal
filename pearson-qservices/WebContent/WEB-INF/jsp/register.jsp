<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"">


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
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/validationEngine.jquery.css"	type="text/css" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/template.css"	type="text/css" charset="utf-8" />


<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<script type="text/javascript">
<%String temp = (String) session.getAttribute("MySessionId");%>
var value= "<%=temp%>";
</script>

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
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.formError.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.validation.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>


<%-- 

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validation.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"
	type="text/javascript">
	</script>
<script
	src="${pageContext.request.contextPath}/js/jquery.validationEngine-en.js"
	type="text/javascript" charset="utf-8">
	</script>
<script
	src="${pageContext.request.contextPath}/js/jquery.validationEngine.js"
	type="text/javascript" charset="utf-8">
	</script> 
	
	
	--%>



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






<!-- ************************************************************************************************************************************ -->

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
/* 
jQuery(document).ready(function(){
	// binds form submission and fields to the validation engine
	jQuery("#formID").validationEngine();
});
 */


	$(document).ready(function() {
	
	/* 	
		$("#btn").submit(function(){
			
			alert("welcome kart");
            if($("#contact_name").val() != '') {
                alert("Please fill in all the required fields (indicated by *)");
             

            //    $(this).addClass("highlight");
                // $('input[type=submit]', this).attr('disabled', 'disabled');
                return false;
            }
        });
		

		/*  $("#firstName").formError("Name cannot be greater than 15 characters long");
		$("#firstName").formError( {remove:false}); 
		
		
		 $("#lastName").validate({
             expression: "if (!isNaN(VAL) && VAL) return true; else return false;",
             message: "Should be a number"
         });
		 */
		
		 /*	
		$('#btn').click(function() {
			if ($("#firstName").val() == "") {
				alert("Please enter Firstname");
			}
			if ($("#").val() == "") {
				alert("Please enter LastName");
			}
			if ($("#emailadd").val() == "") {
				alert("Please enter Email");
			}
			if ($("#phoneNo").val() == "") {
				alert("Please enter PhoneNo");
			} 

		});
		
		$('#firstName').on("input",function() {
			
			var input=$(this);
			var is_name=input.val();
			if(is_name){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
		
		<!--Email must be an email -->
	/* 	$('#contact_email').on("input", function() { */
		
		$('#').click(function() {
			alert("uuuuuuuuuuuuu");
			var input=$(this);
			var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			var is_email=re.test(input.val());
			if(is_email){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
		
	
		$('#emailad').click(function() {
			var input=$(this);
			if (input.val().substring(0,4)=='www.'){input.val('http://www.'+input.val().substring(4));}
			var re = /(http|ftp|https):\/\/[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:\/~+#-]*[\w@?^=%&amp;\/~+#-])?/;
			var is_url=re.test(input.val());
			if(is_url){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}
		});
		
		
		$('#phoneN').click(function() {
			var input=$(this);
			var message=$(this).val();
			console.log(message);
			if(message){input.removeClass("invalid").addClass("valid");}
			else{input.removeClass("valid").addClass("invalid");}	
		});

	
	$("#submi").click(function(event){
		var form_data=$("#contact").serializeArray();
		var error_free=true;
		for (var input in form_data){
			var element=$("#contact_"+form_data[input]['name']);
			var valid=element.hasClass("valid");
			var error_element=$("span", element.parent());
			if (!valid){error_element.removeClass("error").addClass("error_show"); error_free=false;}
			else{error_element.removeClass("error_show").addClass("error");}
		}
		if (!error_free){
			event.preventDefault(); 
		}
		else{
			
		}
	});
		
});

 
	
</script>


<!-- ************************************************************************************************************************************ -->

<!-- <script type="text/javascript">

$(document).ready(function(){

	$('#form1').on("submit", function(e){
				
		var val_first_name = $("#firstName").val();
		var val_last_name = $("#lastName").val();
		var val_phoneNo = $("#phoneNo").val();
		var val_emailadd = $("#emailadd").val();
		
		$("#firstName").removeClass('errordis');	
		$("#lastName").removeClass('errordis');	
		$("#phoneNo").removeClass('errordis');
		$("#emailadd").removeClass('errordis');

		var mobile = document.getElementById("phoneNo").value;      
		var pattern = /^\d{10}$/; 
		
		
		 if( $.trim(val_last_name) === '' )
		{
		
			$("#lastName").addClass('errordis');
			$("#lastName").focus();	
    		$("#plastname").text(" Enter LastName");
			$( "#lastName" ).empty();
			e.preventDefault();
		}	
		
		
		if( $.trim(val_phoneNo) === '' )
		{
			
			$("#phoneNo").addClass('errordis');
			$("#phoneNo").focus();
		    $("#phoneNo").text('Enter PhoneNo.'); 
			e.preventDefault();
		}	
		
		if( $.trim(val_first_name) === '' )
		{
			
			$("#firstName").addClass('errordis');
			$("#firstName").focus();
		    $("#firstName").text('Enter PhoneNo.'); 
			e.preventDefault();
		}	
				
		
		
		if (!pattern.test(val_phoneNo)) {         
					$("#phoneNo").addClass('errordis');
					$("#phoneNo").focus();	
					$("#phoneNo").text('Enter 10 digit PhoneNo');
					e.preventDefault();  
					} 
		
		if( $.trim(val_emailadd) === '' )
		{
			$("#emailadd").addClass('errordis');
			$("#emailadd").text('Enter EmailId.');
			$("#emailadd").focus();	
			e.preventDefault();
		}	
		
		 else{
		
			var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			
			if (reg.test(val_emailadd)){ 
				
				} else{
					
					$("#emailadd").addClass('errordis');
					$("#emailadd").focus();	
					$("#emailadd").text('Invalid Email Format.');
					e.preventDefault();
					
					 } 
		}
		
		


		
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




<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body background="white">


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
					<form action="${pageContext.request.contextPath}/login"		method="post" commandName="login" modelAttribute="user">
						<%-- <form:form method="post" commandName="contact" action="${pageContext.request.contextPath}/login"> --%>
						<label class="color">Username:</label>
						 <input class="field" type="text" name="log" id="log" value="" size="23" /> 
						 <label	class="color" for="pwd">Password:</label> <input class="field" 	type="password" name="pwd" id="pwd" size="23" /> <label>
						 <input name="rememberme" id="rememberme" type="checkbox" value="forever" />&nbsp;Remember	me</label>
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
 <li id=""><a id="close" class="close" href="${pageContext.request.contextPath}/logout/"></a> 
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


			<a href="${pageContext.request.contextPath}/logout/"> </a>

			<!-- FOR SAMPLE CHCEK-END -->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home_front" title="Home"><span>home</span></a></li>

				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Our Services"><span>our services</span></a></li>

				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>


				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="port" title="Request"><span>Request</span></a></li>

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
			
			

		<form action="${pageContext.request.contextPath}/register/done"
			method="post" id="form1" class="my_form_class" commandName="register"
			modelAttribute="user">


			<table
				style="width: 400px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
				class="contactForm">
				<tr>

					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 15px 5px 5px; font-weight: bold;">FirstName:*</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="firstName" id="firstName"
						value="${register.firstName}"
						 /> <p id="pfirstName" /></td>
					
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">LastName:*</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="lastName" id="lastName"
						value="${register.lastName}"
						<form:errors path="lastName" cssClass="error"/> />
						<p id="plastname" />
						
						</td>
						
					<form:errors path="lastName" cssClass="error" />
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:*</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="email" id="emailadd" value="${register.email}" /> <p id="errorEmail" /></td>
					
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:*</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="phoneNo" id="phoneNo" maxlength="10"
						value="${register.phoneNo}" /> <p id="errorPno" /></td>
					
				</tr>


				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Street:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="address1" value="" /></td>
				</tr>
				
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">City :</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="address1" value="" /></td>
				</tr>

				<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START-->

				<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END-->
				

				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">State:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="address1" value="" /></td>
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Country:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;">
					<select	type="option" name="address1" style='width: 146px;'>
					        <option value=" "> </option>
							<option value="India">INDIA</option>
							<option value="Us">US</option>
							<option value="Uk">UK</option>
							<option value="China">CHINA</option>
					</select></td>
				</tr>

				<tr>
					<td colspan="2"
						style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All * 
						fields are required.</td>
				</tr>
				<tr>

					<td colspan="2"
						style="text-align: middle; vertical-align: middle; padding: 5px;"><div
							id="btn">
							<input type="submit" id="submit" name="update" value="Register" />
						</div> (Email will be sent with Temporary Password)</td>
				</tr>
				
			</table>
		</form>
			
			
			
			
			
			
			
			
		</div>
		<!--Close 350px width-->


		<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
		<div class="span-24">
			<div class="hrbg_small"></div>
		</div>
		<!--Close span-24-->



	</div>
	<!--page close-->


	<style>
#errors {
	color: red;
}
</style>







	<!--  SPRING VALIDATION -->
	<%-- 
	${register.error}
	<c:if test="${errors != null}">
		<ul id="errors">
			<c:forEach items="${register}" var="error">
				<h2>4</h2>
				<li>${error.field}:${error.defaultMessage}</li>
				<h2>5</h2>
						${register.error}
					</c:forEach>
		</ul>
	</c:if>
	<h2>6</h2>
	${register.error}
	 ${register.emailerror} --%>
	<!--  SPRING VALIDATION -->

	<form:errors path="firstName" cssClass="error" />
	<form:errors path="lastName" cssClass="error" />
	<form:errors path="email" cssClass="error" />
	<form:errors path="phoneNo" cssClass="error" />


	<c:if test="${errors != null}">
		<ul id="errors">
			<c:forEach items="${error}" var="error">
				<li>${error.field}:${error.defaultMessage}</li>
				<%-- <li>${error.email}:${error.defaultMessage}</li>
					${error.email.defaultMessage} --%>
			</c:forEach>
		</ul>
	</c:if>

	<!-- My change -->






	<div class="span-24" id="form" >






	</div>







	<%-- 

	<form id="contact" method="post" action="">
		<!-- Name -->
		<div>
			<label for="contact_name">Name:</label> <input type="text"
				id="contact_name" name="name"></input> <span class="error">This
				field is required</span>
		</div>
		<!-- Email -->
		<div>
			<label for="contact_email">Email:</label> <input type="email"
				id="contact_email" name="email"></input> <span class="error">A
				valid email address is required</span>
		</div>
		<!--Website -->
		<div>
			<label for="contact_website">Website:</label> <input type="url"
				id="contact_website" name="website"></input> <span class="error">A
				valid url is required</span>
		</div>
		<!-- Message -->
		<div>
			<label for="contact_message">Message:</label>
			<textarea id="contact_message" name="message"></textarea>
			<span class="error">This field is required</span>
		</div>
		<!-- Submit Button -->
		<!-- <div id="contact_submit">				
				<button type="submit">Submit</button>
			</div> -->

		<div id="btn1">
			<button type="submit">Submit</button>
		</div>
	</form>
 --%>




	<!-- My change -->

	</li>

	<!--#2 Feature Slide-->
	<li></li>



	<!--#3 Feature Slide-->
	<li></li>


	<!--#4 Feature Slide-->
	<li></li>
	</ul>
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
		<%-- <div class="span-7 colborder">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/mouse.png" alt="" />
					<h3>Web Development</h3>
					<!-- <p>Lorem ipsum dolor sit amet, consectetur enim ad adipisicing
						elit, sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p> -->
					<p class="more">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p>
				</div>
			</div>
			<!--Left Column Bottom Box Close-->


			<!--Middle Column Bottom Box-->
			<div class="span-7 colborder">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/logo_design.png"
						alt="" />
					<h3>LogoType Design</h3>
					<p>Lorem ipsum dolor sit amet, consectetur enim ad adipisicing
						elit, sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p>
					<p class="more">
						<a href="#"><img
							src="{pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="{pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p>
				</div>
			</div>
			<!--Middle Column Bottom Box-->


			<!--Right Column Bottom Box-->
			<div class="span-7 last">
				<div class="box1">
					<img src="${pageContext.request.contextPath}/img/ident.png" alt="" />
					<h3>Branding and Identity</h3>
					<!-- <p>Lorem ipsum dolor sit amet, consectetur enim ad adipisicing
						elit, sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p> -->
					<p class="more">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/readmore.jpg" alt="" /></a>
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/seemore.jpg" alt="" /></a>
					</p>

					<!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
					<!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
					<!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->

				</div>
			</div>
			<!--Right Column Bottom Box-->

 --%>


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

	<div class="footer">

		<!--#BEGIN FOOTER AREA#-->
		<!--Declare 630px width-->
		<div class="span-16">
			<!--This text area is found directly at the bottom of the page. This area is perfect for a small navigation-->
			<!-- and some brief information about the company-->
			<div class="footer_text">
				<p>&copy; <a href="#">Copy Rights 2014</a> &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
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
