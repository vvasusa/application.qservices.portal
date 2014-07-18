

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>

<title>Pearson Q-service Portal</title>

</head>


<c:if test="${!empty loginType}">
	<a href="${pageContext.request.contextPath}/logout/"> </a>
</c:if>


<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />
<%-- <link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css" type="text/css" media="screen, projection"> --%>

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

<%-- 
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script>
 --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script  type="text/javascript" src="${pageContext.request.contextPath}/js/kendo.all.min.js"></script>
	

<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script> --%>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>

<!--Preload Image Over Imgs-->
<!-- 
<script type="text/javascript">

	$.preLoadImages([
			'./img/img_over/main_image1.jpg',
			'./img/img_over/main_image2.jpg', 
			'./img/img_over/main_image3.jpg',
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



<script type="text/javascript">
$(function() {   
	$( "#accordion1" ).accordion({ header: "h5", collapsible: true, active: false }); 
	
	
	});
     
</script>


<script type="text/javascript">
$(function() {   
	$( "#accordion" ).accordion({ header: "h5", collapsible: true, active: false }); 
	
	$("#accordion").accordion(
			   { active: "a.default",  header: "a.accordion-label" }
			);
	});
     
</script>
<!-- 
 <script type="text/javascript">

 $(function() { 
	
	 $( "#dialog" ).dialog({autoOpen:false}); 
	
	 $("#as a ").click(function(e) {
	       
	      
	        $(this).dialog();
	        $(this).preventDefault();
	        e.preventDefault();
	        return false;
	    });
 }); 
</script> -->



<script type="text/javascript">

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>";

	var temp = null;
	$(document).ready(function() {

		if (Login.match(new RegExp(temp))) {
			$('ul.login').show();
			$('ul.logout').hide();
		}

		if (!Login.match(new RegExp(temp))) {
			$('ul.login').hide();
			$('ul.logout').show();
		}

	});
</script>




<style>
#approve a:visited {
	background: green !important;
}

#reject a:visited {
	background: red !important;
}

.errordis {
	background-color: #FF8080 !important;
	border: 1px solid #F00 !important
}
</style>



<script type="text/javascript">

/* 

var approve= $("#approve").attr("id");

$(this).attr("value");

//alert(approve);

var reject= $('#reject').val();

//alert(reject);



$(function(){  

	 var execute= $('#approve').val();
	   var execute = function() {  

	       alert('This is Ok button');  

     }  

    var cancel = function() {  

        alert('This is Cancel button');  

   }  

   var dialogOpts = {  

       buttons: {  

           "Ok": execute,  

            "Cancel": cancel  

        }  

	    };  

    $(this).dialog(dialogOpts);  

 });  


 */
</script>





<script type="text/javascript">


$('input:text, input:password')
.button()
.css({
        'font' : 'inherit',
       'color' : 'inherit',
  'text-align' : 'left',
     'outline' : 'none',
      'cursor' : 'text'
});
/*
$(document).ready(function () {

$('#approve').on("click",function(e) { 

	 
	$( "#approve" ).dialog({    
		modal: true,  
		title: "Are you sure?",
buttons: {           
"YES": function() {     
	type: "submit"
window.location.href = "${pageContext.request.contextPath}/approve";  
},      
"NO": function() {   
$( this ).dialog( "close" );        
}     
}    
	});  
	}); 
	
	
$('#reject').on("click",function(e) { 

	$( "#reject" ).dialog({    
		modal: true,  
		title: "Are you sure?",
buttons: {           
"YES": function() {     
	type: "submit"
window.location.href = "${pageContext.request.contextPath}/reject";  
},      
"NO": function() {   
$( this ).dialog( "close" );        
}     
}    
	});  
	}); 
	
	
	
});    */

</script>






<!-- <script type="text/javascript">
$(document).ready(function(){

$('#approve').on("click",function(e) {
		 
	$( "#approve" ).dialog({  
		resizable: false,  
		height:140,  
		modal: true,  
		position: 'center',
		buttons: {   
			"Cancel": function() {    
				
			},   
			"Approve": function() { 
				type: "submit"
				window.location.href = "${pageContext.request.contextPath}/userRequestList";   
				}   
			} 
	});
	  
}); 



$('#reject').on("click",function(e) {
		 
	$( "#reject" ).dialog({  
		resizable: false,  
		height:140,  
		modal: true,  
		position: 'center',
		buttons: {   
			"Reject": function() {    
				type: "submit"
					window.location.href = "${pageContext.request.contextPath}/userRequestList";   
			},   
			"Approve": function() { 
				type: "submit"
				window.location.href = "${pageContext.request.contextPath}/userRequestList";   
				}   
			} 
	});
	  
}); 





});





/* $('#approve').dialog({


autoResize: true,
show: "clip",
hide: "clip",
height: 'auto',
width: 'auto',
autoOpen: false,
modal: true,
position: 'center',
draggable: false,

open: function (type, data) {
    $(this).parent().appendTo("form");
},

buttons: { "Ok": function() { $(this).dialog("close"); } } 


});
*/

</script>

 -->




<script type="text/javascript">

$(document).ready(function(){
	
	  $("#edit").hide();
	
	    // then attach hide handler
	    $(".hide").bind("click", function(){
	        $(this).siblings(".show").show();
	        $(this).hide();
	        $("#edit").hide();
	       /*  $(".myDiv." + $(this).attr("id")).show(); */
	    });

	    // and the show handler
	    $(".show").bind("click", function(){
	        $(this).siblings(".hide").show();
	        $(this).hide();
	        $("#edit").show();
	       /*  $(".myDiv." + $(this).attr("id")).hide(); */
	    });


	$('#form1').on("submit", function(e){
				
		var val_address = $("#address").val();
		var val_phoneNo = $("#phoneNo").val();
		var val_emailadd = $("#emailadd").val();
		
		var mobile = document.getElementById("phoneNo").value;      
		var pattern = /^\d{10}$/; 
		
		$("#phoneNo").removeClass('errordis');
		$("#emailadd").removeClass('errordis');
		$("#address").removeClass('errordis');
		
		$( "#plastname" ).empty();
		$( "#errorPno" ).empty();
		$( "#errorEmail" ).empty();
		$( "#pfirstName" ).empty();
		
		 if( $.trim(val_address) === '' )
		{
		
			$("#address").addClass('errordis');
			$("#address").focus();	
		    $("#paddress").text("Enter LastName");
			$( "#address" ).empty();
			
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
		
		
		

	});		

});

</script>
<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>




<body>


	<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
					<h1>Welcome to Pearson Q-service Portal</h1>

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
							type="password" name="pwd" id="pwd" size="23" /> <label><input
							name="rememberme" id="rememberme" type="checkbox" value="forever" />&nbsp;Remember
							me</label>
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
				<li id=""><a id="close" class="close"
					href="${pageContext.request.contextPath}/logout/">Logout</a>
			</ul>
		</div>

	
		<!--Begin Header-->
		<div class="header">
			<!--Logo Area-->
			<div class="logo">

				<img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" />
<p align="right"   style=" font-family: inherit;">
	<font face="verdana ,helvetica"  size="2" color="#990066" >
		<c:if test="${!empty loginType}">
		<%String name = (String) session.getAttribute("loginName");%>
		welcome <%=name%>	
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



			<!-- FOR SAMPLE CHCEK-END -->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title=" Service Catalog"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="key" title="Key Achievements"><span> key achievements</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="myrequest_front" title="Request"><span>my request</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page">
		
		
			<div class="span-24"  >	</div>
				
				
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
		</div>
		<!--Close 350px width-->


		<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
		
		<!--Close span-24-->

		<!--page close-->

		
			<div>
			<form action="${pageContext.request.contextPath}/lostPassword"	method="post" id="form1">
			<input type="text" id ="username" style="border-radius: 5px 5px; height:30px; width:200px"/>Please Enter User Name
			<input type="text" id="email" style="border-radius: 5px 5px; height:30px; width:200px"/>Please Enter User Name
			<input type="text" id="phoneNo" style="border-radius: 5px 5px; height:30px; width:200px"/>Please Enter User Name
			<input type="submit" id="" style="border-radius: 5px 5px; height:30px; width:200px"/>Please Enter User Name
			</form>
			
			</div>
		

<%-- 	<div class="footer">

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
				<li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a>
						|</li>
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
	 --%>
	 <!--footer close-->
	 
 		<div class="footer"> <%@ include file="footer.jsp" %></div>
 
	</div>

 
 	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>