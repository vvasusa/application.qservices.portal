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
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/jquery-ui-1.10.4.css">

<!-- 
<link rel="stylesheet"	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
 -->


<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


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

<!-- 
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 -->

<c:if test="${!empty loginType}">
	<a href="${pageContext.request.contextPath}/logout/"> </a>
</c:if>

<script type="text/javascript">
 	 <%String temp = (String) session.getAttribute("MySessionId");%>
		var value= "<%=temp%>	";
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
<script type="text/javascript"	src="${pageContext.request.contextPath}/js/jquery.color.js"></script>

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
	$( "#accordion" ).accordion({ header: "h5", collapsible: true, active: false }); 
	
	$( "#accordion2" ).accordion({ header: "h5", collapsible: true, active: false }); 
	});
     
</script> 

<!-- 
<script type="text/javascript">
$(function() {   
	
	$( "#accordion2" ).accordion({ header: "h5", collapsible: true, active: false }); 
	});
     
</script> 



<script type="text/javascript">
$(function() {   
	
	$( "#accordion" ).accordion({ header: "h5", collapsible: true, active: false }); 
	});
     
</script>  
-->



<!-- 
<script type="text/javascript">
$(function() {   
	$( "#accordion" ).accordion({ header: "h5", collapsible: true, active: false }); 
	
	$("#accordion").accordion(
			   { active: "a.default",  header: "a.accordion-label" }
			);
	});
     
</script> 
-->

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
 $(function() {    $( "#dialog" ).dialog();  }); 
</script>





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
					<form action="${pageContext.request.contextPath}/login"	method="post" commandName="login" id="form" modelAttribute="user">
						<%-- <form:form method="post" commandName="contact" action="${pageContext.request.contextPath}/login"> --%>
						<label class="color">Username:</label> <input class="field"	type="text" name="log" id="log" value="" size="23" /> 
						<input type="hidden" name="service" id="val" name="val" value="" /> 
						<label	class="color" for="pwd">Password:</label> 
						<input class="field" type="password" name="pwd" id="pwd" size="23" />
						 <label>
						    <input	name="rememberme" id="rememberme" type="checkbox" value="forever" />&nbsp;Remember me</label>
						<div class="clear"></div>
						<input type="submit" name="submit" value="Login" class="bt_login" />
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
		<div class="tab" >
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
				<li><a href="${pageContext.request.contextPath}/index/"	id="home" title="Home"><span>home</span></a></li>
				<li><a href="${pageContext.request.contextPath}/services/"	id="services" title="Services Catalog"><span>our services</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"		id="blog" title="Key Achievements"><span>the bloggery</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/" id="port_front" title="My Request"><span>Request</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/"	id="contact" title="Contact Us"><span>contact us</span></a></li>
			</ul>
			<!--Navigation close-->
		</div>
		<!--Header Close-->
	

		<div class="span-24">
			<!--add hr line-->
			<div class="hrbg_small"></div>
		</div>

		<div class="span-24">
			<c:if test="${empty loginType}">
			<h3>
				 <a	href="${pageContext.request.contextPath}/index" method="post">  </a></h3>
				<div id="dialog" title=" LOGIN REQUIRED">  <p>WELCOME... PLEASE LOGIN...</p></div>
			</c:if>
		</div>




		<div class="page">
			<!--Declare 550px width w/ right border-->
<%-- 			<div class="span-14 colborder">
				<!--Intro Image shown here, about site-->
				<div class="intro">
				<h3>How to use this Catalogue</h3> 
				
				  <img src="${pageContext.request.contextPath}/img/pic1.png" alt="" />
					<p>
						 <a	href="${pageContext.request.contextPath}/services/"></a>
					</p>
				</div>
				<!--Close intro image-->
			</div>
 --%>			<!--Close 550px width-->

			<!--Declare 350px width, last-->
<!-- 			<div class="span-9 last">
				Site Slogan Area
				<div class="slogan">
					<h3>Our Promise</h3>
					<p>Our promise is to provide best-in-class quality services that are centered around the learner which yield measurable benefits to you. 
                       We provide the right people with the right skills to support your delivery anywhere in the world.

					</p>
				</div>
				Close Site Slogan Area
			</div>
 -->			<!--Close 350px width-->
			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<div class="span-24">
				
			</div>
			<!--Close span-24-->
		</div>
		<!--page close-->
		

			<div class="span-24">
				
			</div>

		

	<div  class="span-24">
		<%String temp1 = (String) session.getAttribute("MySessionId");%>
		<%	String temp2 = (String) session.getAttribute("loginType");%>
		
		<c:if test="${loginType == 'VISITOR'}">
		
			  <div id="accordion2">
				<c:forEach var="user" items="${adminUser}">
					<!-- <h5>
					<table>
						<tr>
							<td class="heading">REQUESTID</td>	
							<td class="heading">REQUESTDATE	</td>	
							<td class="heading">STATUS	</td>			
						</tr>
					</table>
					</h5> -->
					<h5>		
		
			<table  style=height:"5px";>
				<tr>
					<td class="heading" width=25%>Request ID</td>
					<td class="heading" width=25%>Request Date</td>
					<td class="heading" width=25%>Status</td>
				</tr>
				</table>  
				</h5>
			           <div>
			              <p>
			             	 <table>
			               		 <tr>
									<td >${user.requestID}</td>
									<td >${user.raisedDate}</td>
									<td >${user.status}</td>
								</tr>
								<tr>
									 <td>QA Commands :${user.commandsByQA} </td></tr>
								<tr>
									<td>PL Commands :${user.commandsByPL} </td>
								</tr>
								<tr>
									<td> SLM Commands :${user.commandsBySLM} </td>
								</tr>
								 <tr>
									<td> ADM Commands :${user.commandsByADM} </td>
								</tr> 
						</table>
				     </div>
				</c:forEach>
       		</div> 
       		
       		
  		
       		
<%--        		
       		
       					<div id="accordion1">
							<c:forEach var="user" items="${adminUser}">
								<h5>
							 		<table> 
										<tr >
											<td  width=27% >REQUEST ID</td>
											<td  width=30% >REQUEST DATE</td>
											<td  width=25% >STATUS</td>
										</tr>
									</table>
								</h5> 
							<div>
						      <p>
								<table>
									<tr>
										<td width=25% >${user.requestID}</td>
									
										<td width=30% >${user.raisedDate}</td>
									
										<td width=32%  >${user.status}</td>
								
									</tr>
									 <tr>
										<td>QA Commands :${user.commandsByQA} </td>
									</tr>
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
							
							
						           *********************** working for  accept / reject link*********************** 
						<table>
							<tr>
							<td><div id="reject">	<a	href="${pageContext.request.contextPath}/reject?id=${user.raisedReqId}"	value="<c:out value="${user.email}"></c:out>"	id="${user.email}" method="post" name="rejectID"><h3 style="color:Red">       </h3></a>	</div></td>
							<td> <div id="approve">	<a href="${pageContext.request.contextPath}/approve?id=${user.raisedReqId}" 	value="<c:out value="${user.email}"></c:out>"	name="approveID" method="post"><h3 style="color:Green">                    </h3></a>	</div></td>
							</tr>
							</table>
							
							*********************** working for  accept / reject link*********************** 
							
								</p>
	            		  </div>
						</c:forEach>
					</div>
		--%>
       		
		</c:if>
	</div>
			
			

			
			
	<div class="span-24">

		<c:if test="${loginType != 'VISITOR' && !empty loginType}">
			<div class="span-24">
				<p></p><p></p>
			</div>
				<div class="span-24"  style = "text-align:right; float:right"> 
					<div class="span-24">
						
					</div>
					<div class="hrbg_small">
					<a href="${pageContext.request.contextPath}/requestList" style = "text-align:right; float:left"><u> <b>  </b></u></a>
					<a href="${pageContext.request.contextPath}/viewAllRequest"><u>All Request</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/myApprove" ><u>My Approve</u></a>&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/myReject"	><u>My Reject</u></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
				</div>
			<div class="span-24">
				<div class="hrbg_small"></div>
			</div>
				
			<c:if test="${empty adminUser}">
					<h1>There is no new services for you..</h1>
			</c:if>
			<c:if test="${!empty adminUser}">
			
			  <div class="span-24">
				<div id="accordion">
					<c:forEach var="user" items="${adminUser}">
						<!-- <h5>
							<table style=height:"5px";> 
								<tr >
									<td  class="heading" width=27% >REQUEST ID</td>
									<td  class="heading" width=30% >REQUEST NAME</td>
									<td  class="heading" width=25% >DATE</td>
									<td   class="heading" width=25% >STATUS</td>
								</tr>
							</table>
						</h5>  -->
		<h5>		
			<table  style=height:"5px";>
				<tr>
					<td class="heading" width=25%>Req_ID</td>
					<td class="heading" width=25%>Request Name</td>
					<td class="heading" width=25%>Date</td>
					<td class="heading" width=25%>Status</td>
				</tr>
				</table>  
			</h5>
				<div>
						  <p>
							<table>
								<tr>
									<td width=25% >${user.raisedReqId}</td>
									<td width=30% >${user.requestName}</td>
									<td width=32%  >${user.lastUpdatedOn}</td>
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
								<tr> <h4>Commands :</h4>
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
				</div>
			</c:if>
		</c:if>
	</div>


	<div class="span-24"  >	
		<div class="hrbg_small">
		</div>

	</div>
	
	<div class="footer">
	
		<div class="span-24"  >	
			<div class="hrbg_small">
	   </div>

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
				<li><a href="${pageContext.request.contextPath}/index/">Home</a>|</li>
				<li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>	|</li>
				<li><a href="${pageContext.request.contextPath}/blog/">Key Achievements</a>	|</li>
				<li><a href="${pageContext.request.contextPath}/requestList/">My request</a>|</li>
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
</div>

	<!--IE Fix for over-shadow text replacement-->
	<script type="text/javascript">
		Cufon.now();
	</script>

</body>
</html>