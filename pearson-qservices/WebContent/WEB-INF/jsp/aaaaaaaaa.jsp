<html>
<head>
<meta charset="utf-8" />
<title>Demo</title>
</head>
<body>
	<a href="http://jquery.com/">jQuery</a>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
	<script>
		$(document).ready(function() {
			$("a").click(function(event) {
				alert("The link will no longer take you to jquery.com");
				event.preventDefault();
			});
		});
	</script>
</body>
</html>