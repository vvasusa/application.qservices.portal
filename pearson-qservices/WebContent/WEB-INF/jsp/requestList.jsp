<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

 <%String temp = (String) session.getAttribute("MySessionVariable");%>

var value= "<%=temp%>";
	

	alert(value);
</script>
</head>
<body>
	<h1>List of request</h1>
	<form action="${pageContext.request.contextPath}/update" method="post" commandName="update" modelAttribute="user">
		${user.userId}
		
		<table
			style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
			class="contactForm">
			<tr>
				<td
					style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Name:</td>
				<td style="text-align: left; vertical-align: top; padding: 5px;"><input
					type="text" name="name" value="" /></td>
			</tr>
			<tr>
				<td
					style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
				<td style="text-align: left; vertical-align: top; padding: 5px;"><input
					type="text" name="email" value="${user.email}" /></td>
			</tr>
			<tr>
				<td
					style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
				<td style="text-align: left; vertical-align: top; padding: 5px;"><input
					type="text" name="phoneno" value="${user.phoneNo}" /></td>
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


</body>
</html>