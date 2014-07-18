<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Our Blog- Pearson Q-service Portal</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/framework.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/site_styles.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slide.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.lightbox-0.5.css" type="text/css" media="screen, projection" />

<!-- jQuery Slider declarations are made in this file. The slider is found at the middle of the index/ page-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slider.css" type="text/css" media="screen, projection" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="./css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="./css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Slider-->
<!--Custom jQuery Set-->
<!--jQuery Lightbox-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lightbox.js"></script>


<!--jQuery Sliding Login Panel Button-->


<style>
table {border-spacing: 5px 20px; }

th, td {
  border:1px inset  #545565;
  border-radius: 10px; !important;
   }

</style>



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



<script type="text/javascript">
$(document).ready(function(){

	$(".btn-slide").click(function(){
		$("#panel").slideToggle("slow");
		$(this).toggleClass("active"); return false;
	});
	
	 
});
</script>

<!--CUFON Text Replacement-->
<!--This script replaces existing <h> tags with the custom Titillium Font that renders correctly in all modern browsers-->
<!--I have included 2 different Titillium font weights, 400 and 800 respectively.-->
<!--If you want to use the much bolder, 800 weight, simply change the "400" below to "800"-->
<script src="${pageContext.request.contextPath}/js/cufon-yui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js" type="text/javascript"></script>
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


<!--LIGHTBOX USAGE -->
<!--This template makes use of jQuery Lightbox plugin, found here: http://leandrovieira.com/projects/jquery/lightbox/ -->
<!--To use Lightbox, simply reference "lightbox" as a class in the link to the picture. ex below: -->
<!-- <a href="image_large.gif" CLASS="lightbox"><img src="image.gif"></a> -->
<!--For many more uses, consult http://leandrovieira.com/projects/jquery/lightbox/  -->
<script type="text/javascript"> 
    $(function() {
        $('.lightbox').lightBox();
    });
</script>



<!-- Color hover JavaScript Files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.color.js"></script>
<script type="text/javascript"> 
 // Background color animation 
        $(document).ready(function(){
                $(".blog_img img").hover(function() {
                $(this).stop().animate({ backgroundColor: "#56BFF8" }, 200);
        },function() {
                 $(this).stop().animate({ backgroundColor: "#f7f7f7" }, 400);	 
        });		
  });
</script>




<!--closing the head tag, if you want to declare any css/javascript or any other references, do it above. -->   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>


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
				<!-- <h1>Welcome to Logical Media </h1> -->
				<h1>Welcome to Q-Service Portal</h1>
				<h2>Are you a new client? Let's Begin.</h2>		
				<p class="color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
				<h2>It's Simple and Cost-Effective!</h2>
				<p class="color">See a demo of our client tools in action <a href="#">here &raquo;</a></p>
			</div>
            <!--panel box1 close-->
            
            <!--panel box2-->
			<div class="left">
            	<h1>Member Login</h1>
				<!-- Login Form -->
				
					<form action="${pageContext.request.contextPath}/login"
						method="post" commandName="login" modelAttribute="user">
					<label class="color">Username:</label>
					<input class="field" type="text" name="log" id="log" value="" size="23" />
					<label class="color" for="pwd">Password:</label>
					<input class="field" type="password" name="pwd" id="pwd" size="23" />
	            	<label><input name="rememberme" id="rememberme" type="checkbox" value="forever" /> &nbsp;Remember me</label>
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
					<label class="color" for="signup">Username:</label>
					<input class="field" type="text" name="signup" id="signup" value="" size="23" />
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" size="23" />
					<label>A password will be e-mailed to you.</label>
					<input type="submit" name="submit" value="Register" class="bt_register" />
                   
			</div>
            <!--panel box3-->
            
		</div>
	</div> <!-- /login -->	
</div> <!--panel -->



<!--The Container class centers design in the center of the screen, -->
<!-- 950px width centered-->
<!-- Panel -->
<div class="container">

	<!-- The tab on top -->	
	<div class="tab">
		<ul class="login">
			<!--Button For Login Panel-->
			<li id="toggle">
				<a id="open" class="open" href="#">Log In | Register</a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>			
			</li>
		</ul> 
        
 <ul class="logout">
 <li id=""><a id="close" class="close" href="${pageContext.request.contextPath}/logout/">Logout</a> 
 </ul>
        
	</div>
    <!-- close tab -->
    
    <%-- 
     <p align="right" style="text-align:relative;"  style=" font-family: inherit;">
		 <font face="verdana ,helvetica"  size="2" color="#990066" >
				
		<c:if test="${!empty loginType}">
 		<%String name = (String) session.getAttribute("loginName");%>
		<i><b>welcome <%=name%></b></i>	
		</c:if>
		</font>
		</p> --%>
      

	<!--Begin Header-->
    <div >
    
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
        <ul id="navigation">
  			<li><a href="${pageContext.request.contextPath}/index/" id="home" title="Home"><span>home</span></a></li>
  			
  			
  			<li><a href="${pageContext.request.contextPath}/services/" id="services" title="Our Services"><span> service catalog</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/blog/" id="key_front" title=" Key Achievements"><span> key achievements</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/requestList/" id="myrequest" title="My Request"> <span>my request</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/contact/" id="contact" title="Contact Us"><span>contact us</span></a></li>
  			<!-- CHANGES FOR ADDING REQUEST TAB START -->
  			
		<!-- CHANGES FOR ADDING REQUEST TAB END -->
		</ul><!--Navigation close-->
        
        <!--Sub-Navigation found directly below the main navigation bar.-->
       <%--  <div class="submenu">
        <ul id="sub-nav">
                    <li><a href="${pageContext.request.contextPath}/jsp/blog/" class="selected">Blog Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/blog2/">Alternate Blog Layout #2</a></li>
                    <li><a href="${pageContext.request.contextPath}/jsp/blog3/">Alternate Blog Layout #3</a></li>
                </ul><!--sub-nav close-->
        
        </div> --%>
        <!--submenu close-->
       

    </div>
    <!--Header Close-->

    
   	<!--Begin Page Area, below header navigation-->
    <div class="page">
    	<!--Declare 950px width w/ right border-->
        <div class="span-24">
            <!--Intro Image shown here, about site-->
            <%-- <div class="intro">
            <img src="${pageContext.request.contextPath}/img/blog_banner.gif" alt="" />
            </div> --%>
            <!--Close intro image-->
        </div>
        <!--Close 950px width-->
        
    
    	<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
        <div class="span-24">
           <table cellpadding="10";> 
           <tr>
           <td  style="background-color:#CCF2FF;"> &#10003; 20+ in-house tools, accelerators & frameworks created and adopted to produce consistent and quality deliverables</td>
      
           <td align="center" rowspan="4" height="50%" style="background-color:#CCF2FF;"> <img style="border:2px outset #545565; border-radius: 10px;" src="${pageContext.request.contextPath}/img/achievements.jpg" alt=""  height="100%" width="100%" border= "1px solid #DDD;" /></td>
           </tr>
           <tr>
           <td style="background-color:#CCF2FF;">&#10003; Achieved 80% savings through implementing Continuous Integration for automated testing and validation for each code change</td>
           </tr>
           <tr>
           <td style="background-color:#CCF2FF;">&#10003; Delivered 80+ projects across Pearson with no schedule slippage in last one year</td>
           </tr>
           <tr>
           <td style="background-color:#CCF2FF;">&#10003; ZERO Severity-1 & Severity-2 defects identified in production during the warranty period thus reassuring the quality practices</td>
           </tr>
           <tr>
           <td style="background-color:#CCF2FF;">&#10003; Provided ‘Common Vulnerability Scoring System’ & recommendations to cognize the severity and impact of the security vulnerabilities to the business and in turn assure of quality product to the “Learner”</td>
           <td style="background-color:#CCF2FF;">&#10003; 250+ enhancements in a year and 2000+ break-fix / maintenance items in a quarter audited for SOX compliance and ZERO findings from external audit</td>
           </tr>
            <tr>
           <td style="background-color:#CCF2FF;">&#10003; Transformational Initiatives were developed & implemented using a Quality Scoring Index based on Pearson Efficacy framework to guide us in making the right decisions , course correct and leading to greater adoption rate</td>
           <td style="background-color:#CCF2FF;">&#10003; Adopted Open Source tools and integrated them with tools across life cycle to reduce overall cost as well as achieve optimal tool stack</td>
           </tr>
           <tr>
           <td style="background-color:#CCF2FF;">&#10003; Standardized quality metrics across global projects so we can compare across domains, applications and platforms</td>
           <td style="background-color:#CCF2FF;">&#10003; Established QA Maintenance team for 336 applications by implementing flawless transition from developers to assure quality of the product being shipped. ZERO production defects in last 6 months assuring product efficacy</td>
           </tr>
           
           </table>
        </div>
        <!--Close span-24-->
           
		<%-- 
        
        <!--Declare 390px width-->
        <div class="span-9">
        	<div class="blog_web">
            <!--Case Title-->
        <!-- 	<h3><a href="#">Blog Entry Title Goes Here #1</a></h3> -->
            <!--Date-->
          <!--   <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD;padding-left: 10px; width:375px">20+ in-house tools, accelerators & frameworks created and adopted to produce consistent and quality deliverables

        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
        </div>  
        <!--Close 390x width-->
        
        
        <!--Declare 350px width-->
        <div class="span-9 prepend-1">
        	<div class="blog_img">
            <!--Large Case Entry Image-->
            <p style="background-color:#DDD; border: 1px solid #DDD;padding-left: 10px;">Achieved 80% savings through implementing Continuous Integration for automated testing and validation for each code change 
            </p>
            
    		</div>
            <!--case close-->
        </div>
        <!--350px width close-->
        
       
       <!--Declare 190px, last-->
        <div class="span-5 last">
        	<!--ENTRY NOTES-->
            <div class="entrynotes">
                   <p style="background-color:#DDD; border: 1px solid #DDD;padding-left: 10px;">Delivered 80+ projects across Pearson with no schedule slippage in last one year
                   </p>   
          <!--   <ul>
            <li><b>Post Date:</b></li>
            <li><span class="white">Jan 1st, 2010</span></li>
            <li><b>Categorized As:</b></li>
            <li><a href="#">Design</a>, <a href="#">Vector Design</a></li>
            </ul> -->
            <!--Close entrynotes-->
            </div>   

        </div>
        <!--close 190px width, last-->
        
        
       
       
        <!-- Declare 950px width for IE-->
   		<div class="span-24">
    	<!--add hr line-->
    	 <hr class="space" />
    	</div>
    	<!--close hr line, 950px IE fix-->
                
     
        
        <!--Declare 390px width-->
        <div class="span-7">
        	<div class="blog_web">
            <!--Case Title-->
        	<!-- <h3><a href="#">Blog Entry Title Goes Here #2</a></h3> -->
            <!--Date-->
         <!--    <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD;padding-left: 10px;">ZERO Severity-1 & Severity-2 defects identified in production during the warranty period thus reassuring the quality practices
        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
            
            <hr class="space" />
             <hr class="space" />

             <div class="span-7">
        	<div class="blog_web">
            <!--Case Title-->
        	<!-- <h3><a href="#">Blog Entry Title Goes Here #2</a></h3> -->
            <!--Date-->
           <!--  <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD; padding-left: 10px;">Provided ‘Common Vulnerability Scoring System’ & recommendations to cognize the severity and impact of the security vulnerabilities to the business and in turn assure of quality product to the “Learner”
        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
            
        </div>  
            
        </div>  
     
        <!--Close 390x width-->
        
        
        <!--Declare 350px width-->
        <div class="span-10 prepend-0">
        	<div class="blog_img">
            <!--Large Case Entry Image-->
            <img src="${pageContext.request.contextPath}/img/achievements.jpg" alt=""  height="180px" width="370px"/>
    		</div>
            <!--case close-->
        </div>
        
         
        <!--350px width close-->
        
       
       <!--Declare 190px, last-->
        <div class="span-7 last">
        	<div class="blog_web">
            <!--Case Title-->
        <!-- 	<h3><a href="#">Blog Entry Title Goes Here #2</a></h3> -->
            <!--Date-->
         <!--    <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD; padding-left: 10px;">250+ enhancements in a year and 2000+ break-fix / maintenance items in a quarter audited for SOX compliance and ZERO findings from external audit
        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
            
              <hr class="space" />
              
              
             <div class="span-7 last">
        	<div class="blog_web">
            <!--Case Title-->
        <!-- 	<h3><a href="#">Blog Entry Title Goes Here #2</a></h3> -->
            <!--Date-->
          <!--   <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD;padding-left: 10px;">Transformational Initiatives were developed & implemented using a Quality Scoring Index based on Pearson Efficacy framework to guide us in making the right decisions , course correct and leading to greater adoption rate
        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
            
        </div>  
            
        </div>  
        <!--close 190px width, last-->
        <hr class="space" />
        
        <!-- Declare 950px width for IE-->
   		<div class="span-24">
    	<!--add hr line-->
    	
    	</div>
    	<!--close hr line, 950px IE fix-->
                
       
        

        
        
        <!--Declare 350px width-->
        <div class="span-7">
        	<div class="blog_img">
            <!--Large Case Entry Image-->
            <img src="${pageContext.request.contextPath}/img/blog.jpg" alt="" />
            <p style="background-color:#DDD; border: 1px solid #DDD; padding-left: 10px;">Adopted Open Source tools and integrated them with tools across life cycle to reduce overall cost as well as achieve optimal tool stack
            </p>
    		</div>
            <!--case close-->
        </div>
        <!--350px width close-->
               <!--Declare 390px width-->
        <div class="span-7">
        	<div class="blog_web">
            <!--Case Title-->
        	<!-- <h3><a href="#">Blog Entry Title Goes Here #3</a></h3> -->
            <!--Date-->
           <!--  <p class="date">Completed Feb 26th, 2010</p> -->
            <!--Case Intro-->
       	 	<p style="background-color:#DDD; border: 1px solid #DDD; padding-left: 10px;">Standardized quality metrics across global projects so we can compare across domains, applications and platforms

        	</p> 
            <!--close case intro-->
        	</div>
            <!--close case_text-->
        </div>  
        <!--Close 390x width-->
       
       <!--Declare 190px, last-->
        <div class="span-10 last">
        	<!--ENTRY NOTES-->
            <div class="entrynotes">
             <p style="background-color:#DDD; border: 1px solid #DDD; padding-left: 10px;">Established QA Maintenance team for 336 applications by implementing flawless transition from developers to assure quality of the product being shipped. ZERO production defects in last 6 months assuring product efficacy
             </p> 
            <!-- <ul>
            <li><b>Post Date:</b></li>
            <li><span class="white">Jan 1st, 2010</span></li>
            <li><b>Categorized As:</b></li>
            <li><a href="#">Design</a>, <a href="#">Vector Design</a></li>
            <li class="nodisplay"><a href="#">Design</a>, <a href="#">Vector Design</a></li>
            </ul> -->
            
            <!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
            <!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
            <!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->
            
            <!--Close entrynotes-->
            </div>   

     
   </div> --%> 
        <!--close 190px width, last-->
        
         
   
	</div><!--page close-->


    <!-- Declare 950px width for IE-->
    
    <!--close hr line, 950px IE fix-->
     
     <div class="span-24">
    	<!--add hr line-->
    	<div class="hrbg_small"></div>
    </div>
    
    <!-- Declare 950px width for IE, once again. Corrects positioning-->
    <!--BEGIN Footer Area-->
    
<%--     	<div class="footer">
        
            <!--#BEGIN FOOTER AREA#-->
            <!--Declare 630px width-->
            <div class="span-8">
                <!--This text area is found directly at the bottom of the page. This area is perfect for a small navigation-->
                <!-- and some brief information about the company-->
                <div class="footer_text">
                <p>
					&copy; Copy Rights 2014 &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
						</p>
                </div><!--footer_text close-->
          
            </div><!--footer close-->
          
            <!--Footer navigation goes here-->
            <!--Declare 310px width-->
            <div class="span-16 last">
                
                <ul id="footer-nav">
                    <li><a href="${pageContext.request.contextPath}/index/">Home</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/services/">Service Catalog</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/blog/">Key Achievements</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/requestList/">My Request</a>|</li>
                    <li><a href="${pageContext.request.contextPath}/contact/">Contact</a></li> 
                </ul><!--footer-nav close-->
                
                <!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
            <!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
            <!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->
                  
            </div><!--span8 close-->
        
    	</div>
 --%>   
  	<!--footer close-->
  	<div class="footer"> <%@ include file="footer.jsp" %></div>
    
	<!--span24 close-->

</div><!--container close-->
   
   

<!--IE Fix for over-shadow text replacement-->
<script type="text/javascript"> Cufon.now(); </script>
   
</body>
</html>
