// Sliding Panel //
$(document).ready(function() {
	
	// Expand Panel
	$("#open").click(function(){
		$("div#panel").slideDown("slow");
	
	});	
	
	// Collapse Panel
	$("#close").click(function(){
		$("div#panel").slideUp("slow");	
	});		
	
	// Switch buttons from "Log In | Register" to "Close Panel" on click
	$("#toggle a").click(function () {
		$("#toggle a").toggle();
	});		
		
});


// Portfolio Swap Functionality //
$(document).ready(function(){
 
	$("a.switch_thumb").toggle(function(){
	  $(this).addClass("swap"); 
	  $("ul.thumb_view").fadeOut("fast", function() {
	  	$(this).fadeIn("fast").addClass("display"); 
		 });
	  }, function () {
      $(this).removeClass("swap");
	  $("ul.thumb_view").fadeOut("fast", function() {
	  	$(this).fadeIn("fast").removeClass("display");
		});
	}); 
 
});


//Image Replacement Gallery //

$(document).ready(function(){
 
 
	$(".thumbs a").click(function(){
								  
	$('#irg img').hide(0);
	$('#hiddenbox').show();
	
	
	$(this).delay(1000,function(){	
	$('#hiddenbox').hide();
								});
	
	
	$(this).delay(1000,function(){	
	$('#irg img').show();
								});							  
								  
								  
	
		var largePath = $(this).attr("href");
		var largeAlt = $(this).attr("title");
		
		$("#largeImg").attr({ src: largePath, alt: largeAlt });
		
		$(".thumb_block h3").html(" " + largeAlt + " "); return false;
	});
	
});
