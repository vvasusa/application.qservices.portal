<?xml version="1.0"?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pearson Q-service Portal</title>

</head>

<!-- MY CHANGE -->

<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" charset="utf-8" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the top of the index/ page-->
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" charset="utf-8" />


<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />
<!-- 
<link rel="stylesheet"	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->

<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css" type="text/css" media="screen, projection">
<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->

<script type="text/javascript">
  <%String temp = (String) session.getAttribute("MySessionId");%>
	var value= "<%=temp%>	";
</script>


<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.js"></script>

<script type="text/javascript"	src="${pageContext.request.contextPath}/js/custom.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/preloader.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/delay.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>

<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.8.1.min.js"></script> --%>
<!-- <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 -->
 <%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.10.4.js"></script> --%>

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
$(function() {   
	$( "#accordion" ).accordion({ header: "h5", collapsible: true, active: false });
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
<script src="${pageContext.request.contextPath}/js/cufon-yui.js"	type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js"	type="text/javascript"></script>

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

<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>


<div id="toppanel">
		<div id="panel">
			<div class="content clearfix">
				<!--panel box1-->
				<div class="left">
						<h1>Welcome to Q-Service Portal</h1>
					<!-- <h1>Welcome to Logical Media</h1> -->
									
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
					id="services" title="Service Catalog"><span> service catalog</span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="key" title="Key Achievements"><span> key Achievements</span></a></li>
				
				
				<li><a href="${pageContext.request.contextPath}/requestList/"  
					id="myrequest_front" title="My Request"  ><span>my request</span></a></li>
					
				<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->


		<!--Begin Page Area, below header navigation-->
		<div class="page">

			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24"  style = "text-align:right; float:right">
			<a href="${pageContext.request.contextPath}/requestList" style = "text-align:right; float:left"><u> <b>My Request</b></u></a>
			
					<a href="${pageContext.request.contextPath}/viewAllRequest"><u>All Request</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					 <a href="${pageContext.request.contextPath}/myApprove" style = "color:rgb(0,90,100);"><u><b>My Approve</b></u></a>&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/myReject"	><u>My Reject</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="hrbg_small"></div>
			</div>
			<!--Close span-24-->
           <div class="hrbg_small"></div>

	</div>
<!--page close-->
<!-- MY CHANGE -->


<c:if test="${loginType=='VISITOR'}">
<a href="${pageContext.request.contextPath}/requestList" method="post">Edit YOur Profile</a>
</c:if>


 <c:if test="${loginType!='null'}"> 
<%-- <c:forEach var="user" items="${adminUser}"> --%> 
<%-- <c:if test="${user.loginType=='null' && user.loginType=='null'}"> --%>

 <%-- <c:if test="${user.loginType!='null'}"> 
  <c:if test="${user.loginType=='z'}">  --%>
  
<table  >
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.phoneNo}</td>

					<td>${user.phoneNo}</td>
					<td>${user.loginType}</td>
					</tr>
					</table>
				<%--  </c:forEach>   --%>
				</c:if>
			



<c:if test="${loginType == 'null'}">
<%-- <c:forEach var="user" items="${adminUser}"> --%>
	<%-- <c:if test="${loginType=='VISITOR'}"> --%>
		
		<h2>To view data please login</h2>
		<a href="${pageContext.request.contextPath}/index" method="post">click
			here for login</a>
	<%-- </c:if> --%>
	</c:if>
	<%-- </c:forEach> --%>
	
	

	<%-- <% if( value=="AD02" ) { %>
	
  <DIV>....</DIV> --%>

	<%-- <c:if test="${user.email==user.email}"> --%>
	<%-- <c:if test="true"> --%>
	
	<div>
	
  <%-- <c:forEach var="user" items="${adminUser}"> 
	<c:if test="${user.loginType=='VISITOR'}"> --%>
	
	 <%String temp1 = (String) session.getAttribute("MySessionId");%>
	 <%String temp2 = (String) session.getAttribute("loginType");%>



<c:if test="${loginType == 'VISITOR'}">
    There is a user **attribute** in the session

	<c:forEach var="user" items="${adminUser}"> 
	<%-- <c:if test="${sessionScope.user != null}">
    There is a user **attribute** in the session
</c:if> --%>
		
			<form action="${pageContext.request.contextPath}/update"
				method="post" commandName="requestForm">
				<h3>request list</h3>
				<input type="hidden" name=loginType value="${user.loginType}" />
			INVALID	email ${user.email} 
				
				

				<H1>WELCOME TO VISITOR</H1>
				<table
					style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
					class="contactForm">
					<tr>

						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">First Name:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="firstName" value="${user.firstName}" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Last Name:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="lastName" value="${user.lastName}" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="email" value="${user.email}" <form:errors path="email" /> /></td>
						<td><form:errors path="email" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phone No:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="phoneNo" value="${user.phoneNo}" /></td>
					</tr>

					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Subject:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="subject" value="" /></td>
					</tr>

					<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START-->
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
					<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END-->
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Message:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><textarea
								name="message" cols="40" rows="6"></textarea></td>
					</tr>

					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
							fields are required.</td>
					</tr>
					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px;"><input
							type="submit" name="update" value="update" /> (Email will not be
							sent)</td>

					</tr>
				</table>
			</form>
		
	<%-- </c:if>
	 </c:forEach>   --%>
	 
	 </c:forEach>
	 </c:if> 
</div>

	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->

 <c:if test="${loginType != 'VISITOR'}">
 
 	<c:if test="${empty adminUser}">
		<h3> Please submit a Service Request</h3>
	</c:if>
	
	<div id="accordion">
	<c:forEach var="user" items="${adminUser}">
		<h5 style="height:70px; color:#383838">		
			<table>
				<tr>
					<td class="heading" width=20%>Request ID</td>
					<td class="heading" width=20%>Requestor Name</td>
					<td class="heading" width=20%>Service Name</td>
					<td class="heading" width=20%>Approved Date </td>
					<td class="heading" width=20%>Status</td>
				</tr>
				<tr>
					<td width=20%>${user.raisedReqId}</td>
					<td width=20%>${user.firstName}</td>
					<td width=20%>${user.serviceName}</td>
					<td width=20%>${user.lastUpdatedOn}</td>
					<td width=20%>Approved</td>
					</tr>
				</table>  
				</h5>
				
				<%-- <c:if test="${user.loginType=='QA'}"> --%>
	<div>
		<p>
			<h6>
					<!-- style="background-color:lightblue;" -->
					<%-- <td >${user.approvedBy}</td> --%>
					<%-- <td>${user.requestName}</td>
					<td>${user.requestID}</td> --%>
				<table >
					
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
					<%-- <td><a href="${pageContext.request.contextPath}/approve"	method="post"></a> </td> <td><a href="${pageContext.request.contextPath}/reject"	method="post"></a></td>
					    <td><a href="edit?id=${user.userId}"></a></td> <td><a href="delete?id=${user.userId}">REJECT</a></td>
						</tr>
						<tr><td colspan="7"><a	href="${pageContext.request.contextPath}/update"> </a></td>		</tr> --%>
					
					</table>
					</h6>
				</p>
			</div>
       	  </c:forEach>

		</div>
	</c:if>


<div class="span-24">
<div class="hrbg_small"></div>
</div>
<div class="footer"> <%@ include file="footer.jsp" %></div>

</div>
<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->
</body>
</html>