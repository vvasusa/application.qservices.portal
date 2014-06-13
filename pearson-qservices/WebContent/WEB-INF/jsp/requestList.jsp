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
<a href="${pageContext.request.contextPath}/logout/"> </a></c:if>
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

<%String Login = (String) session.getAttribute("loginType");%>
var Login= "<%=Login%>	"; 

var temp= null;
$(document).ready(function() {
	
	 if(Login.match(new RegExp(temp))){$('ul.login').show(); $('ul.logout').hide();}
	
if(!Login.match(new RegExp(temp))){ $('ul.login').hide(); $('ul.logout').show();}  

	});
</script>



<style>
#approve a:visited {
    background: green !important;
}

#reject a:visited {
    background: red !important;
}

</style>

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
					id="home_front" title="Home"><span>home</span></a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/portfolio/"
					id="port" title="Work Portfolio"><span>work portfolio</span></a></li> --%>
				<li><a href="${pageContext.request.contextPath}/services/"
					id="services" title="Our Services"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="blog" title="The Blog"><span>the bloggery</span></a></li>
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
			</div>
			<!--Close 350px width-->


			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->



		</div>
		<!--page close-->

<!-- =======================********************************************************************************** -->


<c:if test="${!empty loginType}">
<c:if test="${loginType=='VISITOR'}">

	<a href="${pageContext.request.contextPath}/requestList" method="post">            </a>
	
	
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

	<h3>To view data please loginHere .. <a href="${pageContext.request.contextPath}/index" method="post">click
		here..</a></h3>
	
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



		<c:if test="${loginType == 'VISITOR'}">

			<c:forEach var="user" items="${adminUser}">

				<%-- <c:if test="${sessionScope.user != null}">
    There is a user **attribute** in the session
</c:if> --%>

				<form action="${pageContext.request.contextPath}/update"
					method="post" commandName="requestForm">
				
					<input type="hidden" name=loginType value="${user.loginType}" />


				<p>	<h3>Welcome <b>${user.firstName}</b> Please update your profile before seeing your request...</h3></p>
					<table
						style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
						class="contactForm">
						<tr>
						
					<%-- 	

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
						
						
						 --%>
						
						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="email" value="${user.email}"
								<form:errors path="email" /> /></td>
							<td><form:errors path="email" /></td>
						</tr>
						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="phoneNo" value="${user.phoneNo}" /></td>
						</tr>



						<tr>
							<td
								style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">address:</td>
							<td style="text-align: left; vertical-align: top; padding: 5px;"><input
								type="text" name="address" value="${user.address}" /></td>
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
				</form>

				<h2> click here for seeing list of request rasied by you ..<a href="${pageContext.request.contextPath}/userRequestList" method="post">click
		here</a></h2>
				

			</c:forEach>
		</c:if>
	</div>

	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->
	<div>
		<%-- <c:if test="${loginType != 'VISITOR'}"> --%>

		<c:if test="${loginType != 'VISITOR' && !empty loginType}">

			<h3> To view all the request for this Q-Service Portal.<a href="${pageContext.request.contextPath}/viewAllRequest" method="post"><u>click
		here</u></a></h3>
	
			<table border="1">


				<tr>
					<td class="heading">REQUEST ID</td>
					<td class="heading">FIRSTNAME</td>
					<td class="heading">LASTNAME</td>
					<td class="heading">REQUESTORID</td>
					<td class="heading">SERVICEID</td>
					<td class="heading">RAISED DATE</td>
					<td class="heading">REVIEW BY</td>
					<td class="heading">STATUS</td>
					
				</tr>
				<c:forEach var="user" items="${adminUser}">
					<%-- <c:if test="${user.loginType=='QA'}"> --%>
					<tr>
						<td>${user.raisedReqId}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.requestorId}</td>
						<td>${user.serviceId}</td>
						<td>${user.lastUpdatedOn}</td>
						<td>${user.approvedBy}</td>
						<td>${user.status_Id}</td>
						
						<%-- <td>${user.requestName}</td>
					<td>${user.requestID}</td> --%>
				 
						<td>
						<div id ="approve">
						<a href="${pageContext.request.contextPath}/approve?id=${user.raisedReqId}"
							value="<c:out value="${user.email}"></c:out>"  name="approveID" method="post">Approve</a></div></td>
							
						<td> <div id ="reject">
						<a href="${pageContext.request.contextPath}/reject?id=${user.raisedReqId}"
							value="<c:out value="${user.email}"></c:out>" id="${user.email}"  method="post" name="rejectID">Reject</a></div></td>
							
					</tr>

					<tr>
						<td colspan="7"><a
							href="${pageContext.request.contextPath}/update"> </a></td>
					</tr>
					<%-- </c:if> --%>
				</c:forEach>
			</table>
</div>
		</c:if>
	</div>
	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->


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