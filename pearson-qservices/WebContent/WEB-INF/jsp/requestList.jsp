<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>

<title>Logical Media</title>
<%-- <script type="text/javascript">
  <%String temp = (String) session.getAttribute("MySessionId");%>

var value= "<%=temp%>";
	

	alert(value);
</script> --%>
</head>


<%-- 
<a href="${pageContext.request.contextPath}/index/">HomePage</span></a>
 <a href="${pageContext.request.contextPath}/logout/"> logout</a> --%>

<c:if test="${!empty loginType}">
	<a href="${pageContext.request.contextPath}/logout/"> </a>
</c:if>
<!-- =======================********************************************************************************** -->

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


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slider.css"
	type="text/css" media="screen, projection" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->
<script type="text/javascript">

  <%String temp = (String) session.getAttribute("MySessionId");%>

var value= "<%=temp%>	";

	/* alert(value);  */
</script>

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

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<!--Preload Image Over Imgs-->
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
	background-color: FF8080 !important;
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
<a href="${pageContext.request.contextPath}/logout/"><b></b></a>
<body>


	<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
					<h1>Welcome to Logical Media</h1>

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



			<!-- FOR SAMPLE CHCEK-END -->
			<ul id="navigation">
				<li><a href="${pageContext.request.contextPath}/index/"
					id="home" title="Home"><span>home</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/"
					id="port_front" title="Request"><span>Request</span></a></li>
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

		<!-- =======================********************************************************************************** -->


		<c:if test="${!empty loginType}">
			<c:if test="${loginType=='VISITOR'}">

				<a href="${pageContext.request.contextPath}/requestList"
					method="post"></a>


			</c:if>
		</c:if>

		<c:if test="${empty loginType}">
			<%-- <c:forEach var="user" items="${adminUser}"> --%>
			<%-- <c:if test="${user.loginType=='null' && user.loginType=='null'}"> --%>

			<%-- <c:if test="${user.loginType!='null'}"> 
  <c:if test="${user.loginType=='z'}">  --%>
			<table>
				<tr>


				</tr>
			</table>
			<%--  </c:forEach>   --%>
		</c:if>




		<c:if test="${empty loginType}">
			<%-- <c:forEach var="user" items="${adminUser}"> --%>
			<%-- <c:if test="${loginType=='VISITOR'}"> --%>

			<h3>
				To view data please loginHere .. <a
					href="${pageContext.request.contextPath}/index" method="post">click
					here..</a>
			</h3>

			<%-- </c:if> --%>
		</c:if>
		<%-- </c:forEach> --%>


		<body>
			<%-- <% if( value=="AD02" ) { %>
	
  <DIV>....</DIV> --%>

			<%-- <c:if test="${user.email==user.email}"> --%>
			<%-- <c:if test="true"> --%>

			<div>

				<%-- <c:forEach var="user" items="${adminUser}"> 
	<c:if test="${user.loginType=='VISITOR'}"> --%>

				<%
					String temp1 = (String) session.getAttribute("MySessionId");
				%>
				<%
					String temp2 = (String) session.getAttribute("loginType");
				%>



			<%-- 	<c:if test="${loginType == 'VISITOR'}">

					<c:forEach var="user" items="${adminUser}">


						<form action="${pageContext.request.contextPath}/update" method="post" commandName="requestForm" id="form1">

							<input type="hidden" name=loginType value="${user.loginType}" />


							<p>
							<h3>
								Welcome <b>${user.firstName}</b> Please update your profile
								before seeing your request...
								
								<a href="#" class="show">Edit</a>  
								<a href="#" class="hide">Cancel</a> 

								
							</h3>
							</p>
							<div id="edit">
							<table
								style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
								class="contactForm">
								<tr>

										

							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">FirstName:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="firstName" value="${user.firstName}" /></td>
						</tr>
						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">LastName:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="lastName" value="${user.lastName}" /></td>
						</tr>
						
						
						
								<tr>
									<td	style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
									<td	style="text-align: left; vertical-align: top; padding: 5px;"><input	type="text" name="email" value="${user.email}" id="emailadd"/></td>
								</tr>
								<tr>
									<td	style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
									<td	style="text-align: left; vertical-align: top; padding: 5px;"><input
										type="text" name="phoneNo" value="${user.phoneNo}" id="phoneNo"/></td>
								</tr>

								<tr>
									<td	style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">address:</td>
									<td	style="text-align: left; vertical-align: top; padding: 5px;"><input
										type="text" name="address" value="${user.address}" id="address"/></td>
								</tr>


								<!-- 

						CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START
						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Request:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><select
								type="text" name="requestname">
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="mercedes">Mercedes</option>
									<option value="audi">Audi</option>
							</select></td>
						</tr>
						CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END
						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Message:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="subject" value="" /></td>
						</tr>
 -->
								<tr>
									<td colspan="2"
										style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
										fields are required.</td>
								</tr>
								<tr>
									<td colspan="2"
										style="text-align: left; vertical-align: middle; padding: 5px;"><input
										type="submit" name="update" value="update" /> (Email will not
										be sent)</td>

								</tr>
							</table>
							</div>
						</form>

						<h2>
							click here for seeing list of request rasied by you ..<a
								href="${pageContext.request.contextPath}/userRequestList"
								method="post">click here</a>
						</h2>

					</c:forEach>
				</c:if> --%>
				
				
				
				
				
				
				<c:if test="${loginType == 'VISITOR'}">
				
				
			
			  <div id="accordion1">
			  
				<c:forEach var="user" items="${adminUser}">
						
					<h5>
					<table >
					<tr>
					<td>REQUESTID</td>	
					<td>REQUESTDATE	</td>	
					<td>STATUS	</td>			
					</tr>
					</table>
					</h5>
					
			           <div>
			              <p>
			              <table style="background-color:lightblue;">
			                <tr>
							<td width=30%;>${user.requestID}</td>
							<td width=40%;>${user.raisedDate}</td>
							<td width=20%;>${user.status}</td>
							<%-- <td><h4>${user.requestorId}</h4></td>
							<td><h4>${user.serviceId}</h4></td>
							<td><h4>${user.raisedDate}</h4></td>
							<td><h4>${user.lastUpdatedOn}</h4></td> --%>
							
						</tr>
						<p></p>
						<tr>
						 <td>QA Commands :${user.commandsByQA} </td></tr>
						<tr>
						<td>PL Commends :${user.commandsByPL} </td>
						</tr>
						<tr>
						<td> SLM Commends :${user.commandsBySLM} </td>
						</tr>
						 <tr>
						<td> ADM Commends :${user.commandsByADM} </td>
						</tr> 
						</table>
				     </p>
				     </div>
					</c:forEach>
				
				
				
	<%-- 			
				<h2> click here for seeing list of request rasied by you ..<a href="${pageContext.request.contextPath}/userRequestList" method="post">click	here</a></h2>
	 --%>
	

        </div>
	</c:if>
				
			</div>
			
			
			
			
			
			
<%-- =========================================			
			
			

			<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->

			<c:if test="${loginType != 'VISITOR'}">
	<div>
			<c:if test="${loginType != 'VISITOR' && !empty loginType}">

				<h3>
					To view all the request for this Q-Service Portal.<a
						href="${pageContext.request.contextPath}/viewAllRequest"
						method="post"><u>click here</u></a>
				</h3>

			
					<c:if test="${empty adminUser}">
						<h1>There is no new services for you..</h1>
					</c:if>
					<c:if test="${!empty adminUser}">
						<div id="accordion">
							<table border="1">
								<tr>
									<td class="heading">REQUEST ID</td>
									<td class="heading">FIRSTNAME</td>
									<td class="heading">LASTNAME</td>
									<td class="heading">REQUESTORID</td>
									<td class="heading">SERVICEID</td>
									<td class="heading">RAISED DATE</td>
									<td class="heading">REVIEW BY</td>
									<td class="heading">REVIEWER ID</td>
									<td class="heading">STATUS</td>
									<td class="heading">DESCREPTION</td>

								</tr>
								<c:forEach var="user" items="${adminUser}">
									<c:if test="${user.loginType=='QA'}">
									<tr>
										<td>${user.raisedReqId}</td>
										<td>${user.firstName}</td>
										<td>${user.lastName}</td>
										<td>${user.requestorId}</td>
										<td>${user.serviceId}</td>
										<td>${user.lastUpdatedOn}</td>
										<td>${user.approvedBy}</td>
										<td>${user.userId}</td>
										<td>${user.status_Id}</td>

										<td><div id="as"><a href="#" title="${user.serviceId}">tooltip</a></div></td>
										<td><div id="as"><input type="radio" title="${user.serviceId}" id="">tooltip</div></td>
						<td> <div id="dialog" title="${user.raisedReqId}"></div></td>

										<td>
											<div id="approve">
												<a
													href="${pageContext.request.contextPath}/approve?id=${user.raisedReqId}"
													value="<c:out value="${user.email}"></c:out>"
													name="approveID" method="post">Approve</a>
											</div>
										</td>

										<td>
											<div id="reject">
												<a
													href="${pageContext.request.contextPath}/reject?id=${user.raisedReqId}"
													value="<c:out value="${user.email}"></c:out>"
													id="${user.email}" method="post" name="rejectID">Reject</a>
											</div>
										</td>
									</tr>

									<tr>
										<td colspan="7"><a
											href="${pageContext.request.contextPath}/update"> </a></td>
									</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</c:if>
			</c:if>
	</div>


	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->
	
	
	
	
	
	
	
	
	
	
	
	
	==============================================
	
 --%>	
	
	
	
	
	
	
			

			<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->

			
	<div>
			<c:if test="${loginType != 'VISITOR' && !empty loginType}">
			
<div class="span-24" style = "text-align:right; float:right" > 
		
		<a href="${pageContext.request.contextPath}/requestList" style = "text-align:right; float:left"><u> <b>  </b></u></a>
					<a href="${pageContext.request.contextPath}/viewAllRequest"><u>All Request</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/myApprove" ><u>My Approve</u></a>&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/myReject"	><u>My Reject</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
		
			<div class="hrbg_small">

			</div>
		</div> 
				   
					<div></div>
				<div class="hrbg_small" >
				
				
			</div>
			
					<c:if test="${empty adminUser}">
						<h1>There is no new services for you..</h1>
					</c:if>
					<c:if test="${!empty adminUser}">
					
						<div id="accordion">
							
							
					<c:forEach var="user" items="${adminUser}">
					
					<%-- 	<h5>REQUEST ID : ${user.raisedReqId} &nbsp;&nbsp; SERVICE ID : ${user.serviceId} &nbsp&nbsp  USER ID : ${user.userId}</h5> --%>
						
							<h5>
							 <table> 
							<tr >
							<td  width=27% >REQUEST ID</td>
							<td  width=30% >REQUEST NAME</td>
							<td  width=25% >DATE</td>
							<td  width=25% >STATUS</td>
							</tr>
							</table>
							</h5> 
						
						
							<div>
						      <p>
								<table>
									<tr>
									<td width=25% >${user.raisedReqId}</td>
									<%-- <td>${user.firstName}</td>
									<td>${user.lastName}</td> --%>
									<%-- <td>${user.requestorId}</td> --%>
									<td width=30% >${user.requestName}</td>
									<%-- <td width=20% >${user.serviceId}</td> --%>
									<td width=32%  >${user.lastUpdatedOn}</td>
									<%-- <td>${user.approvedBy}</td>
									<td>${user.userId}</td> --%>
									<td width=25%  >${user.status}</td></tr>
									<tr>
									  <td>
									 <p></p>
									  </td>
									</tr>
									<tr>
									  <td>
									 <h4> Descreption By User: </h4>${user.desc}
									  </td>
									</tr>
							</table>
							
							
							<table>
							<form  name="form" commandName="requestForm">
							<tr> <h4>Commends:</h4>
							<td><textarea name="commands" cols="9" rows="2" style="width: 850px;" style="height: 80px;" ></textarea></td>
							<td><input type="hidden" name="approveID" id="approve"  value="${user.raisedReqId}" />
							<input type="hidden" name="rejectID" value="${user.raisedReqId}" /></td>
							</tr>
							<tr>
							<td style="text-align:center"  >
							<input type="submit" style="width: 100px;"   value="approve" id="approve"  onclick="javascript: form.action='${pageContext.request.contextPath}/approve';"/>
                            <input type="submit" style="width: 100px;"   value="reject"  id="reject"  onclick="javascript:form.action='${pageContext.request.contextPath}/reject';"/></td>
							</tr>
							</form>
							</table>
							
							
					<%-- 	           *********************** working for  accept / reject link*********************** 
						<table>
							<tr>
							<td><div id="reject">	<a	href="${pageContext.request.contextPath}/reject?id=${user.raisedReqId}"	value="<c:out value="${user.email}"></c:out>"	id="${user.email}" method="post" name="rejectID"><h3 style="color:Red">       </h3></a>	</div></td>
							<td> <div id="approve">	<a href="${pageContext.request.contextPath}/approve?id=${user.raisedReqId}" 	value="<c:out value="${user.email}"></c:out>"	name="approveID" method="post"><h3 style="color:Green">                    </h3></a>	</div></td>
							</tr>
							</table>
							
							*********************** working for  accept / reject link***********************  --%>
							
							</p>

	              </div>
				</c:forEach>
			</div>
		</c:if>
	</c:if>
</div>
	

	<!-- ************************PART THREE Start************************************* -->

	<div>

		<%--  <c:forEach var="user" items="${adminUser}">  --%>

		<%-- <form action="${pageContext.request.contextPath}/update" method="post"
			commandName="requestForm">

			<input type="hidden" name=loginType value="${user.loginType}" />


			<c:if test="${loginType == 'VISITOR'}">
				<table border="1">


					<tr>
						<td class="heading">First Name</td>
						<td class="heading">Last Name</td>
						<td class="heading">Email</td>
						<td class="heading">ContactNo</td>
						<td class="heading">Req_Name</td>
						<td class="heading">Req_ID</td>
						<td class="heading">ACTION</td>
						<td class="heading">ACTION</td>

					</tr>
					<c:forEach var="user" items="${adminUser}">
						<c:if test="${user.loginType=='QA'}">

						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.phoneNo}</td>
							<td>${user.phoneNo}</td>
							<td>${user.phoneNo}</td>
						</tr>
					</c:forEach>
				</table>
		</form>



		</c:if> --%>
	</div>


	<!-- ************************PART THREE END************************************* -->




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
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>