
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


<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/framework.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/site_styles.css"	type="text/css" media="screen, projection" charset="utf-8" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slide.css" type="text/css"	media="screen, projection" charset="utf-8" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the top of the index/ page-->
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" charset="utf-8" />


<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/slider.css"	type="text/css" media="screen, projection" />
<!-- <link rel="stylesheet"	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->

	 <link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css"> 

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->
<script type="text/javascript">

  <%String te = (String) session.getAttribute("MySessionId");%>

var value= "<%=te%>	";

	/* alert(value);  */
</script>

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

	<%-- <script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-1.10.4.js"></script> --%>
	
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>

<!-- <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->

<script type="text/javascript">

  <%String temp = (String) session.getAttribute("MySessionId");%>

var value= "<%=temp%>	";

</script>


<!--Preload Image Over Imgs-->

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
		         welcome <%=name%>	
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
					id="services" title=" Service Catalog"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"
					id="key" title=" Key Achievements"><span>key achievements</span></a></li>
					<li><a href="${pageContext.request.contextPath}/requestList/"  
					id="myrequest_front" title="My Request" ><span>my request</span></a></li>
					<li><a href="${pageContext.request.contextPath}/contact/"
					id="contact" title="Contact Us"><span>contact us</span></a></li>

			</ul>
			<!--Navigation close-->


		</div>
		<!--Header Close-->
		
		

		<!--Begin Page Area, below header navigation-->
			<!--Close 350px width-->

			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
	
		<div class="page">
	
			<!--add hr line-->
			<div class="hrbg_small">
		
		<div class="span-24" style = "text-align:right; float:right" > 
		<a href="${pageContext.request.contextPath}/requestList" style = "text-align:right; float:left"><u> <b>My Request</b></u></a>
					<a href="${pageContext.request.contextPath}/viewAllRequest"	style = "color:rgb(0,90,100);" ><u><b>All Request</b></u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/myApprove" ><u>My Approve</u></a>&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/myReject"	><u>My Reject</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="hrbg_small"></div>
		</div>
		</div>
			<!--add hr line-->
			
	
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



<c:if test="${empty adminUser}">
<h3> No Service Request</h3>
</c:if>


<c:if test="${empty loginType}">
	<h3>To view data please loginHere .. <a href="${pageContext.request.contextPath}/index" method="post">click	here..</a></h3>
</c:if>

	
		<%	String temp1 = (String) session.getAttribute("MySessionId");	%>
		<%	String temp2 = (String) session.getAttribute("loginType");		%>

	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->
	<div class="container">
		<c:if test="${loginType != 'VISITOR' && !empty loginType}">
			<h3> <a href="${pageContext.request.contextPath}/viewAllRequest" method="post"><u>	</u></a></h3>
				<div id="accordion"> 
					<c:forEach var="user" items="${adminUser}">
						<h5 style="height: 70px; bgcolor: red;">		
							<table>
								<tr>
									<td class="heading" width=20%>Request ID</td>
									<td class="heading" width=20%>Requestor Name</td>
									<td class="heading" width=20%>Service Name</td>
									<td class="heading" width=20%> Date </td>
									<td class="heading" width=20%>Status</td>
								</tr>
								<tr>
									<td width=20%>${user.raisedReqId}</td>
									<td width=20%>${user.firstName}</td>
									<td width=20%>${user.requestName}</td>
									<td width=20%>${user.lastUpdatedOn}</td>
									<td width=20%>${user.status}</td>
								 </tr>
							</table>  
						</h5>
				
					<%-- <c:if test="${user.loginType=='QA'}"> --%>
					<h6>
						<table>
						
					    <tr>
							 <td>QA Commands: ${user.commandsByQA} </td></tr>
						<tr>
							<td>PL Commends:${user.commandsByPL} </td>
						</tr>
						<tr>
							<td> SLM Commends:${user.commandsBySLM} </td>
						</tr>
						 <tr>
							<td> ADM Commends:${user.commandsByADM} </td>
						</tr> 
			<%-- 	 <tr>
						<td>
						<div id ="approve">
						<a href="${pageContext.request.contextPath}/approve?id=${user.raisedReqId}"	value="<c:out value="${user.email}"></c:out>"  name="approveID" method="post"></a></div></td>
							
						<td> <div id ="reject">
						<a href="${pageContext.request.contextPath}/reject?id=${user.raisedReqId}"	value="<c:out value="${user.email}"></c:out>" id="${user.email}"  method="post" name="rejectID"></a></div></td>
					</tr>
					<tr>
						<td colspan="7"><a	href="${pageContext.request.contextPath}/update"> </a></td>
					</tr> --%>
					<%-- </c:if> --%>
					</table>
					</h6>
				</c:forEach>
			
       </div>
   </c:if>
</div>
	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->


	<!-- ************************PART THREE Start************************************* -->

	<div>

		
	</div>


	<!-- ************************PART THREE END************************************* -->


<div class="footer">

			<div class="hrbg_small"></div>
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
					<%-- <li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a>
						|</li> --%>
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
		<!--footer close-->



	</div>
	<!--container close-->



	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>
	
</body>
</html>