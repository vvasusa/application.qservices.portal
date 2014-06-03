<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="_http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" import="java.util.*" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<?xml version="1.0"?>
<title>Insert title here</title>
</head>
<body>
	<%-- <fmt:bundle basename="com.sample.config.sample">
  
  </fmt:bundle> --%>
  
 
  

<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">ServiceName:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="req_ServiceName" value=<bean:message key="${label_greeting}"/> /></td>
						

	<c:forEach var="user" items="${adminUser}">
		<h1>RaiseRequest</h1>

		<a href="${pageContext.request.contextPath}/index/">HomePage</span></a>
		<a href="${pageContext.request.contextPath}/logout/"> logout</a>


		<form action="${pageContext.request.contextPath}/doneReq"
			method="post" commandName="requestForm" modelAttribute="requestForm">
			<table
				style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
				class="contactForm">

				<tr>

					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">ServiceName:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="req_ServiceName" key="label_greeting" readonly /></td>
				</tr>

				<tr>

					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">ServiceID:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="req_ServiceID" value="REQ ID" readonly /></td>
				</tr>
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
						type="text" name="email" value="${user.email}" /> <form:errors
							path="email" /></td>
					
				</tr>
				<tr>
					<td
						style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">Phoneno:</td>
					<td style="text-align: left; vertical-align: top; padding: 5px;"><input
						type="text" name="phoneNo" value="${user.phoneNo}" /></td>
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
	</c:forEach>
</body>
</html>