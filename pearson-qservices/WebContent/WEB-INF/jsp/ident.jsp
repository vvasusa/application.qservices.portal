 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
<head>

<title>Portfolio / Identity Pack - Logical Media</title>

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
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
<!--[if lt IE 7]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie6.css" type="text/css" media="screen, projection" /><![endif]-->


<!--jQuery-->
<!--jQuery Slider-->
<!--Custom jQuery Set-->
<!--jQuery Lightbox-->
<script type="text/javascript" src="./js/jquery.js"></script> 
<script type="text/javascript" src="./js/custom.js"></script> 
<script type="text/javascript" src="./js/slider.js"></script>
<script type="text/javascript" src="./js/lightbox.js"></script>
<script type="text/javascript" src="./js/delay.js"></script>


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
<script src="./js/cufon-yui.js" type="text/javascript"></script>
<script src="./js/TitilliumText15L_400.font.js" type="text/javascript"></script>
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
<script type="text/javascript" src="./js/jquery.color.js"></script>
<script type="text/javascript"> 
 // Background color animation 
        $(document).ready(function(){
                $(".identity img").hover(function() {
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
      

	<!--Begin Header-->
    <div class="header">
    	<!--Logo Area-->
    	<div class="logo">
        <a href="${pageContext.request.contextPath}/index/"><img src="./img/logo.jpg" alt="" /></a>
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
                    <li><a href="${pageContext.request.contextPath}/case/">Case Studies</a></li>
                    <li><a href="${pageContext.request.contextPath}/web/">Web Design</a></li>
                    <li><a href="${pageContext.request.contextPath}/logo/">LogoTyping</a></li>
                    <li><a href="${pageContext.request.contextPath}/ident/" class="selected">Identity Pack</a></li> 
                </ul><!--footer-nav close-->
        
        </div>
        <!--submenu close-->

    </div>
    <!--Header Close-->

    
   	<!--Begin Page Area, below header navigation-->
    <div class="page">
    <!--PAGE Title-->
    <h2>Portfolio / Identity Pack</h2>
    
    	<!--We have to declare span-24 so the hr bar is full width, and aligns with content boxes below-->
        <div class="span-24">
            <div class="hrbg_small"></div>    
        </div>
        <!--Close span-24-->
           
		
        <div class="span-18">
        	<div class="identity">
        		<img src="./img/port/ident.jpg" alt="" />
                <h3>Identity Pack</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
				</p>
                            
                
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
				</p>
                
                <hr class="space" />
                
                <h3>Included Services</h3>
                <!--#SERVICES MENU#-->
      			<!--Below you will find a brief listing of some services-->
      			<!--110px width, LEFT Column-->
      			<div class="span-8 append-1">
     				<ul id="ident_menu">
        				<!--Edit your own services information, simply by changing the links in the <a> and text in between the <a> tags-->
    					<li><a href="${pageContext.request.contextPath}/services/">+ Site Analysis</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ PSD Conversion</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ CMS Integration</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ SEO</a></li>
  					</ul>
                    
     			<!--Services Menu #1 Close-->
     			</div><!--span-3 close-->
      
      
      			<!--#SERVICES MENU 2#-->
      			<!--110px width, RIGHT Column-->
     		 	<div class="span-8 last">
      				<ul id="ident2_menu">
      					<!--Edit your own services information, simply by changing the links in the <a> and text in between the <a> tags-->
    					<li><a href="${pageContext.request.contextPath}/services/">+ Web Design</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ Online Marketing</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ E-Commerce</a></li>
    					<li><a href="${pageContext.request.contextPath}/services/">+ Logo Creation</a></li>
  					</ul>
                    
                <!--Services Menu #2 Close-->
      			</div><!--span-3 close-->
                
                <hr class="space" />
                
                
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius tempor incididunt ut labore et dolore 
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Nullam pulvinar ultri malasuada quisque. 
				</p>
                
                <hr class="space" />
                
        	</div>
        </div>
        
        
        <!--#BEGIN SIDEBAR#-->
        <!--This area is found to the right of the page content-->
        <!--Declare 230px width-->
        <div class="span-6 last">
            <!--Sidebar Boxed Style with 20px padding-->
            <div class="boxed_top"></div>
            <div class="boxed">
            
            <!--#Begin Latest News Title-->
            <h3>Identity Clients said,</h3>
            
            <!--add spacing-->
            <hr class="space" />
  
            <!--Entry Title-->
            <h5><span class="color">Bob Smith</span> of Cyclix said, </h5>
            <!--brief intro-->
            <p class="quote_"><em>&quot;Lorem ipsum dolor sit amet contetur adipisicing elit, sed do eiusmodarel tempor incididunt...&quot;</em></p>
            <!--close entry-->
         
            <!--add hr line-->
            <hr />
     
             <!--Entry Title-->
            <h5><span class="color">Jon McClain</span> of Realtors said, </h5>
            <!--brief intro-->
            <p class="quote_"><em>&quot;Lorem ipsum dolor sit amet contetur adipisicing elit, sed do eiusmodarel tempor incididunt...&quot;</em></p>
            <!--close entry-->
            
            <!--add hr line-->
            <hr />
   
             <!--Entry Title-->
            <h5><span class="color">Jake James</span> of RealWorks said, </h5>
            <!--brief intro-->
            <p class="quote_"><em>&quot;Lorem ipsum dolor sit amet contetur adipisicing elit, sed do eiusmodarel tempor incididunt...&quot;</em></p>
            <!--close entry-->
            
            
            </div><!--boxed close-->
            <div class="boxed_bottom"></div>

            <!--add spacing-->
            <hr class="space" />
            
        </div><!--span-6 close-->
        <!--#CLOSE SIDEBAR#-->         
   
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
                <p>&copy; <a href="#">Logical Media</a> is available 24/7 365 days a year. We are currently located in Toledo, OH.
                &nbsp;&nbsp; | &nbsp;&nbsp;Need a quote? <a href="#">Click Here</a>.</p>
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
