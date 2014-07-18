<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>
<head>

<title>Pearson Q-service Portal</title>

<!-- CSS Links-->
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
					<h3>Are you a new client? Let's Begin.</h3>
					<p class="color">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.</p>
					<h3>It's Simple and Cost-Effective!</h3>
					<p class="color">See a demo of our client tools in action <a href="#">here&raquo;</a>
					</p>
				</div>
				<!--panel box1 close-->


				<!--panel box2-->
				<div class="left">
					<h1>Member Login</h1>
					<!-- Login Form -->
					<form action="${pageContext.request.contextPath}/login/" method="post" onclick="return validation()">
						<%--  <a href = "${pageContext.request.contextPath}/success/"> value </a> --%>
						<label class="color">Username:</label> <input class="field"	type="text" name="log" id="log" value="" size="23" /> 
						<label	class="color" for="pwd">Password:</label> 
						<input class="field" type="password" name="pwd" id="pwd" size="23" /> 
						<label><input name="rememberme" id="rememberme" type="checkbox" value="forever" />	&nbsp;Remember me</label>
						<div class="clear"></div>
						<input type="submit" name="submit" value="Login" class="bt_login" />
						<a class="lost-pwd" href="#">Lost your password?</a>
					</form>
				</div>
				<!--panel box2 close-->



				<!--panel box3-->
				<div class="left right">
					<h1>Not a member yet? Sign Up!</h1>
					  <label class="color" for="signup">Username:</label> 
					  <input	class="field" type="text" name="signup" id="signup" value="" size="23" />
					  <label class="color" for="email">Email:</label>
					  <input	class="field" type="text" name="email" id="email" size="23" /> 
					  <label>A	password will be e-mailed to you.</label> 
					  <input type="submit"	name="submit" value="Register" class="bt_register" />
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
				<li id="toggle"><a id="open" class="open" href="#">Log In |	Register</a> <a id="close" style="display: none;" class="close"	href="#">Close Panel</a></li>
			</ul>

			<ul class="logout">
				 <li id=""><a id="close" class="close" href="${pageContext.request.contextPath}/logout/">Logout</a> 
		   </ul>
		</div>
		<!-- close tab -->


		<!--Begin Header-->
		<div class="">
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



			<!--Begin Navigation-->
			<ul id="navigation"><li><a href="${pageContext.request.contextPath}/index/"	id="home" title="Home"><span>home</span></a></li>
				
				<li><a href="${pageContext.request.contextPath}/services/"	id="services_front" title=" Service Catalog"><span> service catalog</span></a></li>
				<li><a href="${pageContext.request.contextPath}/blog/"	id="key" title="Key Achievements"><span>key achievements</span></a></li>
				<li><a href="${pageContext.request.contextPath}/requestList/" id="myrequest" title=" My Request"><span>work portfolio</span></a></li>
				<li><a href="${pageContext.request.contextPath}/contact/" id="contact" title="Contact Us"><span>contact us</span></a></li>
			</ul>
			<!--Navigation close-->
</div>

	<%-- 	<div class="submenu"> 
    	<ul id="sub-nav">
             <li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>	</li>       
			<li><a href="${pageContext.request.contextPath}/compliance/">Compliance</a></li>	         
       </ul><!--sub-nav close-->
    </div>		 --%>				
                    
			<%-- <li><a href="${pageContext.request.contextPath}/automated/">Automation</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/cloud/">Cloud</a></li>							
			<li><a href="${pageContext.request.contextPath}/compliance/">Compliance</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/crm/">CRM</a></li>							
			<li><a href="${pageContext.request.contextPath}/data/">Data</a>	</li>				     
			<li><a href="${pageContext.request.contextPath}/environmentManage/">Environment Management</a></li>							
			<li><a href="${pageContext.request.contextPath}/erp/">ERP</a></li>							
			<li><a href="${pageContext.request.contextPath}/infrastructure/">Infrastructure</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/middleware/">Middleware</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/mobile/">Mobile</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/online/">Online</a>	</li>						
			<li><a href="${pageContext.request.contextPath}/performance/">Performance</a>	</li>			
			<li><a href="${pageContext.request.contextPath}/QaProgramManagement/">QA Program Management</a>	</li>					
			<li><a href="${pageContext.request.contextPath}/qualityConsulting/">Quality Consulting</a>	</li>					
			<li><a href="${pageContext.request.contextPath}/security/">Security</a></li>
          </ul><!--sub-nav close-->
        </div> --%>
		<!--Header Close-->



<div class="span-24">
	<div class="submenu"> 
    <ul id="sub-nav">		
    <li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>	</li>       
			<li><a href="${pageContext.request.contextPath}/compliance/"></a></li>
   </ul>
  </div>  
 </div>

		<!--Begin Page Area, below header navigation-->
		<div class="page">
		
				
		<div class="span-24">
		<hr class="space" />
		</div>

			<!--Declare 550px width w/ right border-->
			<%-- <div class="span-14 colborder">
				<!--Intro Image shown here, about site-->
				<div class="intro">
					<img src="${pageContext.request.contextPath}/img/intro.gif" alt="" />
					<p>	Find out More about our services <a	href="${pageContext.request.contextPath}/services/">here &raquo;</a>
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
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					</p>
				</div>
				Close Site Slogan Area
			</div> -->
			<!--Close 350px width-->


			<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
			<!-- <div class="span-24">
				<div class="hrbg_small"></div>
			</div> -->
			<!--Close span-24-->



		</div>
		<!--page close-->

		<!-- ******************************************************************************** -->
		<c:if test="${!empty loginType}">
			<c:if test="${loginType=='VISITOR'}">

					<div class="bar bar-header bar-light" align="right" style="height=10px;">
					<form action="${pageContext.servletContext.contextPath}/raiseRequest/"	method="post" commandName="requestForm">
						<input type="hidden" name="service" value="Compliance" /> 
						<input type="hidden" name="serviceID" value="CM03" /> 
						<!-- <input type="submit" value="Submit Request" align="right"/> -->
					   <input type="image" src="${pageContext.request.contextPath}/img/button.jpg" alt="Raise Your Request Here.." />
						
						<div style="float:left">
							
						</div>
						
						
					</form>
					</div>
			</c:if>
		</c:if>
		<!-- <h1>
			<spring:message code="label.requestservice.servicename" />
		</h1> -->

		<!-- ******************************************************************************** -->
		<div class="span-24">
		<hr class="space" />
		<h2 style="color: black">Compliance</h2>
			<p>	
				Ensure software changes adhere to established process and control requirements of Pearson’s Sarbanes-Oxley compliance program
			</p> 

			<h3 class="myNewStyle" style="color: #3399FF">Key Features Offerings</h3>
			<ul >
				<li >
				&bull; Perform compliance validation for QMF (Questions-Maintenance-Fix), Enhancements (Polaris process & PDLC) and Non-Key application (Security and Access)
				
				</li >
				<li >
				 &bull; Review and audit In-scope change activity leveraging standard processes and information sources (e.g., Remedy, Change Point, PDLC and other established document repositories)
				 
				</li>
				<li >
				&bull;  Review and audit Non-key application security and access activity, leveraging standard processes and information sources
				
				</li >
				<li >
				&bull;  Assessment and formal compliance scoring of in-scope change and non-key security and access activity, using established compliance scoring framework
				
				</li >
				<li >
				&bull;  Facilitate IT manager review of compliance report for follow-up review/discussion of nonconformance areas
				
				</li >
			</ul>
				
			


			<h3 style="color: #3399FF">Where would this service benefit?</h3>
			<ul >
				<li >
				&bull; Critical Application group with financial impact with-in Pearson Technology
				
				</li >
				<li >
				&bull; Assisting external auditors to report on the adequacy of the company's internal control on financial reporting
				
				</li >
				<li >
				&bull; Formalizing and strengthening internal checks and balances within corporate
				</li >
				<li >
				&bull; Situations demanding institution of various new levels of control and sign-off to ensure that financial reporting exercises full disclosure
				
				</li >
			</ul>

			<h3 style="color: #3399FF">Tools & Accelerators Leveraged</h3>
			<ul>
			    <li >
				&bull; Change point system of record for QMF to store SOX artifacts used for SOX Audits. 
				
				</li >
				  <li >
				&bull; Remedy infrastructure change management and problem management tracking system to record and approve the QMF changes to be promoted to production
				
				</li >
				  <li >
				&bull; PDLC system of record for PDLC Enhancements to store Project details and SOX artifacts used for SOX Audits
				
				</li >
				  <li >
				&bull; Request for Service system of record for enhancements to ensure funding/approvals
				
				</li >
			
				  <li >
				&bull; Control framework setup and maintenance to support upcoming audit activity schedule

				
				</li >
			</ul>
			
			<h3 style="color: #3399FF">Key Highlights from Projects Executed</h3>
			<ul >
				<li >
				&bull;  ~250 Enhancements implemented with zero leakage of defects
				
				</li >
				<li >
				&bull;  ~2,000 Break-Fix/Maintenance items implemented with zero leakage of defects
				
				</li >
				<li >
				&bull;  Trained half of the applications teams as they reorganized their groups
				
				</li >
				<li >
				&bull;  Transitioned from hard-copy evidence audits into soft-copy online evidence. Resulting in one week effort savings during each quarters testing
				</li >
			</ul>
</div>
			<!-- Declare 950px width for IE-->
			<div class="span-24">
				<!--add hr line-->
				<div class="hrbg_small"></div>
			</div>
			<!--close hr line, 950px IE fix-->



			<!-- Declare 950px width for IE, once again. Corrects positioning-->
			<!--BEGIN Footer Area-->

<%-- 			<div class="footer">

				<div class="span-8">
					<div class="footer_text">
						<p>
							&copy; Copy Rights 2014 &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
						</p>
					</div>

				</div>
				<div class="span-16 last">

					<ul id="footer-nav">
						<li><a href="${pageContext.request.contextPath}/index/">Home</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a>
							|</li>
						<li><a href="${pageContext.request.contextPath}/blog/">Key Achievements</a>
							|</li>
							   <li><a href="${pageContext.request.contextPath}/requestList/">My Request</a>|</li>
						<li><a href="${pageContext.request.contextPath}/contact/">Contact</a></li>
					</ul>

				</div>
				<!--span8 close-->

			</div>
 --%>			
 <!--footer close-->
 
	<div class="footer"> <%@ include file="footer.jsp" %></div>
	
		<!--container close-->

</div>

		<!--IE Fix for over-shadow text replacement-->
		<script type="text/javascript">
			Cufon.now();
		</script>
</body>
</html>
