<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	
	

<%String temp = (String) session.getAttribute("MySessionVariable");%>
var  value= "<%=temp%>";
alert(value);
	function toggleClock() {
		
		// get the clock 
		alert(value);

		var myClock = document.getElementById('clock');
		// get the current value of the clock's display property 
		var displaySetting = myClock.style.display;
		// also get the clock button, so we can change what it says 
		var clockButton = document.getElementById('clockButton');
		// now toggle the clock and the button text, depending on current state

		if(value==logout){
			if (displaySetting == 'block') {
				// clock is visible. hide it

				myClock.style.display = 'none';
				// change button text
				clockButton.innerHTML = 'Show clock';
			} else {
				// clock is hidden. show it 
				alert("inside if");
				myClock.style.display = 'block';
				// change button text
				clockButton.innerHTML = 'Hide clock';
		
	}

	}
	}
	function hide(a) {

		document.getElementById(a).style.visibility = "hidden";
	}
	function hide1(a) {
		
		document.getElementById(a).style.visibility = "visible";
	}
</script>
<body>
	welcome to error page

	<%-- <%= session.getAttribute("names") %>  
<% String user = session.getAttribute(getAttribute)); %>  --%>

	<%=session.getAttribute("uname")%>
	<%=session.getAttribute("MySessionVariable")%>
	<%=session.getAttribute("MySessionVariable")%>


	<%-- <% 
    String param= (String)session.getAttribute("MySessionVariable");
	System.out.println(param);
	
 %> --%>

	<button onclick="toggleClock()" id="clockButton">Show clock</button>
	<button onclick="toggleClock()" id="clock">clock</button>

	<input type="text" name="txtHide" width="20">
	<br />
	<input type="button" name="btnHide" value="HIDE" width="20"
		onclick="hide('txtHide');">
	<input type="button" name="btnHide" value="HIDE" width="20"
		onclick="hide('txtHide');">
	<!-- <button onclick="hide()" id="clock"> clock</button>  -->

</body>
</html>