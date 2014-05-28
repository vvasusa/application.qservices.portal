<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
    .error {
    	color: red;
    }
  </style> 
</head>
<body>
<form action="${pageContext.request.contextPath}/done"	method="post" commandName="login" modelAttribute="user">
<table
					style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
					class="contactForm">
					<tr>

						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">FirstName:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="firstName" value="${user.firstName}" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">LastName:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="lastName" value="${user.lastName}" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Email:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="email" value="${user.email}" <form:errors path="email" /> /></td>
						<td><form:errors path="email" cssClass="error"/></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="phoneNo" value="${user.phoneNo}" /></td>
					</tr>

					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Address1:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="address1" value="" /></td>
					</tr>

					<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  START-->
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Address2:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><select
							type="text" name="address1">
								<option value="volvo">Volvo</option>
								<option value="saab">Saab</option>
								<option value="mercedes">Mercedes</option>
								<option value="audi">Audi</option>
						</select></td>
					</tr>
					<!-- CODE FOR INSERTING REQUEST ID DROPDOWNBOX  END-->
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Address 3:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><textarea
								name="address1" cols="20" rows="1"></textarea></td>
					</tr>

					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px; font-size: 90%; font-weight: bold;">All
							fields are required.</td>
					</tr>
					<tr>
						<td colspan="2"
							style="text-align: left; vertical-align: middle; padding: 5px;"><input
							type="submit" name="update" value="Register" /> (Email will not be
							sent)</td>

					</tr>
				</table>
				</form>

</body>
</html>