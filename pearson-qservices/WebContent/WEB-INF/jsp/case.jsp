 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
<head>

<title>Portfolio / Case Studies - Pearson Q-service Portal</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slider.css" type="text/css" media="screen, projection" />

<!--IE 6,7 Render Fixes-->
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Slider-->
<!--Custom jQuery Set-->
<!--jQuery Lightbox-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<script src="${pageContext.request.contextPath}/js/cufon-yui.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/TitilliumText15L_400.font.js" type="text/javascript"></script>

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
DD_belatedPNG.fix('.tab a.open, .tab ul.login li,.tab a.close, img');
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
                $(".case img").hover(function() {
                $(this).stop().animate({ backgroundColor: "#56BFF8" }, 200);
        },function() {
                 $(this).stop().animate({ backgroundColor: "#f7f7f7" }, 400);	 
        });
                $("#case_preview img").hover(function() {
                $(this).stop().animate({ backgroundColor: "#56BFF8" }, 200);
        },function() {
                 $(this).stop().animate({ backgroundColor: "#f7f7f7" }, 400);	 
        });
				 $(".case_text_b2 img").hover(function() {
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
				<h1>Welcome to Logical Media </h1>
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
					<label class="color">Username:</label>
					<input class="field" type="text" name="log" id="log" value="" size="23" />
					<label class="color" for="pwd">Password:</label>
					<input class="field" type="password" name="pwd" id="pwd" size="23" />
	            	<label><input name="rememberme" id="rememberme" type="checkbox" value="forever" /> &nbsp;Remember me</label>
        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					<a class="lost-pwd" href="#">Lost your password?</a>
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
        <a href="${pageContext.request.contextPath}/index/"><img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" /></a>
        </div>
        <!--Close Logo Area-->
    
            
        <!--Begin Navigation-->    
        <ul id="navigation">
  			<li><a href="${pageContext.request.contextPath}/index/" id="home" title="Home"><span>home</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/portfolio/" id="port_front" title="Work Portfolio"><span>work portfolio</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/services/" id="services" title="Our Services"><span>our services</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/blog/" id="blog" title="The Blog"><span>the bloggery</span></a></li>
  			<li><a href="${pageContext.request.contextPath}/contact/" id="contact" title="Contact Us"><span>contact us</span></a></li>
		</ul><!--Navigation close-->
        
        
        <!--Sub-Navigation found directly below the main navigation bar.-->
        <div class="submenu">
        <ul id="sub-nav">
                    <li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/case/" class="selected">Case Studies</a></li>
                    <li><a href="${pageContext.request.contextPath}/web/">Web Design</a></li>
                    <li><a href="${pageContext.request.contextPath}/logo/">LogoTyping</a></li>
                    <li><a href="${pageContext.request.contextPath}/ident/">Identity Pack</a></li> 
                </ul><!--footer-nav close-->
        
        </div>
        <!--submenu close-->

    </div>
    <!--Header Close-->

    
   	<!--Begin Page Area, below header navigation-->
    <div class="page">
    <h2>Portfolio / Case Studies</h2>
    
    	<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
        <div class="span-24">
            <div class="hrbg_small"></div>
        </div>
        <!--Close span-24-->
           
		
        <!--Declare 550px width-->
        <div class="span-14">
        	<div class="case">
            <!--Large Case Entry Image-->
            <img src="${pageContext.request.contextPath}/img/port/case.jpg" alt="" />
    		</div>
            <!--case close-->
        </div>
        <!--550px width close-->
        
        <!--Declare 390px width, last-->
        <div class="span-10 last">
        	<div class="case_text">
            <!--Case Title-->
        	<h3>New Phone Icon Set</h3>
            <!--Date-->
            <p class="date">Completed Feb 26th, 2010</p>
            <!--Case Intro-->
       	 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut 
        	labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        	Nullam pulvinar ultri malasuada quisque.
        	</p> 
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut 
        	labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        	Nullam pulvinar ultri malasuada quisque.
        	</p><!--close case intro-->
        	</div>
            <!--close case_text-->
        </div>  
        <!--Close 390x width, last-->
        
        
        <!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
        <div class="span-24">
        	<!--Design Title below main case image-->
        	<div class="case_title">
        	<h4>Icon Design / Implementation</h4>
            </div>
            <!--close case_title-->
            <!--add hr line for ie -->
            <div class="hrbg_small_case"></div>
        </div>
        <!--Close span-24-->
        
        
        <!--Declare 550px width-->
        <div class="span-14">
        	<!--text found directly below main img-->
        	<div class="case_text_b1">
           	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut 
        	labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        	Nullam pulvinar ultri malasuada quisque.
        	</p> 
            <p>Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris Nullam pulvinar ultri mal asuada 
            quisque.Lorem ipsum dolor sit amet, consectetur adi adipisicing elit, sed do eius tempor incididunt 
            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulem ullamco laboris 
            Nullam pulvinar ultri malas uada quisque. Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris 
            Nullam pulvinar ultri mal asuada quisque.Lorem ipsum dolor sit amet, consectetur adi adipisicing elit, sed do 
            eius tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
            ulem ullamco laboris Nullam pulvinar ultri malas uada quisque.
            </p>
            <p>Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris Nullam pulvinar ultri mal asuada quisque.
            Lorem ipsum dolor sit amet, consectetur adi adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulem ullamco laboris Nullam pulvinar ultri malas 
            uada quisque.</p>
                        
            <!--add spacing-->            
            <hr class="space" />

        	
            <!--Design Title #2-->
        	<h4>Preview of Work</h4>
            	<div class="hrbg_small_case_b1"></div>
        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut 
        	labore etore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        	Nullamasda pulvinar ultri malasuada quisque.
        	</p> 
            
            <!--add spacing-->            
            <hr class="space" />
            
            	<!--Case Preview Images Found Here-->
            	<ul id="case_preview">
                    <li><a href="${pageContext.request.contextPath}/img/port/case/large.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/prev1.jpg" alt="" /></a></li>
                    <li><a href="${pageContext.request.contextPath}/img/port/case/large.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/prev1.jpg" alt="" /></a></li>
                    <li><a href="${pageContext.request.contextPath}/img/port/case/large.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/prev1.jpg" alt="" /></a></li>
                    <li><a href="${pageContext.request.contextPath}/img/port/case/large.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/prev1.jpg" alt="" /></a></li>
                </ul><!--case preview images close-->
                
                
            <!--Design Title #2-->
            <h4>In Closing</h4>
            <div class="hrbg_small_case_b1"></div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut 
        	labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
        	Nullam pulvinar ultri malasuada quisque.
        	</p>     
            
            
            
            <!--add spacing-->  
            <hr class="space" />
            
        	</div>
            <!--case_text close-->
        </div>  
        <!--span-14 close-->
        
        
        
        <!--Declare 390px width, last-->
        <!--Large Images found to the right of main Case text-->
        <!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
        <!--WIthout this fix, IE6 renders text outside area-->
        <!--[if IE 6]><div class="ie6_capsule"></div><![endif]-->  
        <div class="span-10 last">
        	<div class="case_text_b2">
            <!--Images Title-->
            <h3>Sample Case Images</h3>
        	<a href="${pageContext.request.contextPath}/img/port/case/large2.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/b1_1.jpg" alt="" /></a>
            <a href="${pageContext.request.contextPath}/img/port/case/large2.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/b1_2.jpg" alt="" /></a>
            <a href="${pageContext.request.contextPath}/img/port/case/large2.jpg" class="lightbox"><img src="${pageContext.request.contextPath}/img/port/case/b1_3.jpg" alt="" /></a>
        	</div>
            <!--Case text 2 close -->
        </div>    
        <!--Close 390px width-->
        
        <!--[if IE 6]></div><![endif]-->
   
	</div><!--page close-->


    <!-- Declare 950px width for IE-->
    <div class="span-24">
    	<!--add hr line-->
    	<div class="hrbg_small"></div>
    </div>
    <!--close hr line, 950px IE fix-->
    
    
    
    <!-- Declare 950px width for IE, once again. Corrects positioning-->
    <!--BEGIN Footer Area-->
    <div class="span-24">
    	<div class="footer">
        
            <!--#BEGIN FOOTER AREA#-->
            <!--Declare 630px width-->
            <div class="span-16">
                <!--This text area is found directly at the bottom of the page. This area is perfect for a small navigation-->
                <!-- and some brief information about the company-->
                <div class="footer_text">
                <p>
                &copy; <a href="#">Copy Rights 2014</a> &nbsp;&nbsp; | &nbsp;&nbsp;Pearson Q-service Team. <a href="#"> </a>
                </p>
                </div><!--footer_text close-->
          
            </div><!--footer close-->
          
            <!--Footer navigation goes here-->
            <!--Declare 310px width-->
            <div class="span-8 last">
                
                <ul id="footer-nav">
                    <li><a href="${pageContext.request.contextPath}/index/">Home</a> |</li>
                    <%-- <li><a href="${pageContext.request.contextPath}/portfolio/">Portfolio</a> |</li> --%>
                    <li><a href="${pageContext.request.contextPath}/services/">Services</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/blog/">Blog</a> |</li>
                       <li><a href="${pageContext.request.contextPath}/requestList/">Request</a>|</li>
                    <li><a href="${pageContext.request.contextPath}/contact/">Contact</a></li> 
                </ul><!--footer-nav close-->
                  
                <!--This is an IE6 workaround for problems rendering jquery sliding text-overs.-->
            <!--WIthout this fix, IE6 renders "Visit Site" outside of the last image-->
            <!--[if IE 6]><div class="fix6"><br /><a href="http://themeforest.net/">Visit Site</a></div><![endif]-->  
                  
            </div><!--span8 close-->
        
    	</div><!--footer close-->
    
	</div><!--span24 close-->

</div><!--container close-->
   
   

<!--IE Fix for over-shadow text replacement-->
<script type="text/javascript"> Cufon.now(); </script>
   
</body>
</html>
