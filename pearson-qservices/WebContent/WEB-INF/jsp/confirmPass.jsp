<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/success" method="post" commandName="password" modelAttribute="user">

<table style="width: 500px; background-color: #fff; border: 5px solid #ddd; padding: 200px; font-size: 12px;"
					class="contactForm">
					<tr>

						<td
							style="width: 20%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Old Password:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="currentPass" value="${user.firstName}" />*</td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">New Password:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="newPass" value="${user.lastName}" />*</td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Confirm Password:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="confirmPass" value="${user.email}" <form:errors path="email" /> />*</td>
						<td></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Alternative Email:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="email" value="${user.phoneNo}" /><form:errors path="email" cssClass="error"/> Password will be emailed</td>
					</tr>


					

					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
							fields are required.</td>
					</tr>
					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px;"><input
							type="submit" name="update" value="Submit" /> (Email will not be
							sent)</td>

					</tr>
				</table>
				</form>

</body>
</html>