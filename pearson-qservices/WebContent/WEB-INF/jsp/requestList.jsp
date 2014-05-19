<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

 <%-- <%String temp = (String) session.getAttribute("MySessionVariable");%>

var value= "<%=temp%>	";

	alert(value); --%>
</script>
</head>
<body>
	<h1>List of request</h1>
	<%-- <% if( value=="AD02" ) { %>
  <DIV>....</DIV> --%>

	<%-- <c:if test="${user.email==user.email}"> --%>
	<%-- <c:if test="true"> --%>
	<c:if test="${user.loginType=='QA'}">
		<div>
			<form action="${pageContext.request.contextPath}/update"
				method="post" commandName="update" modelAttribute="user">
				${user.userId} ${user.email} ${user.phoneNo} ${user.email}
			
				<H1>WELCOME TO VISITOR</H1>
				<table
					style="width: 680px; background-color: #fff; border: 1px solid #ddd; padding: 10px; font-size: 12px;"
					class="contactForm">
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">FirstName:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="name" value="${user.req_Fname}" /></td>
					</tr>
					<tr>
						<td
							style="width: 10%; text-align: left; vertical-align: top; padding: 10px 5px 5px 5px; font-weight: bold;">LastName:</td>
						<td style="text-align: left; vertical-align: top; padding: 5px;"><input
							type="text" name="name" value="${user.req_Lname}" /></td>
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

		</div>
	</c:if>


	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->

	<c:if test="${user.loginType=='null'}">
		<div>
				<H1>WELCOME TO QA</H1>

<table border="1">
			<tr>
				<td class="heading">First Name</td>
				<td class="heading">Last Name</td>
				<td class="heading">Email</td>
				<td class="heading">ContactNo</td>
				<td class="heading">Req_Name</td>
				<td class="heading">Req_ID</td>
				<td class="heading">ACTION</td>
				<td class="heading">ACTION</td>
				
			</tr>
			<%-- <c:forEach var="user" items="${requestList}"> --%>
			
				<tr>
					<td>${user.firstName}</td>
					<td>${user.req_Lname}</td>
					<td>${user.email}</td>
					<td>${user.phoneNo}</td>
					<td>${user.requesName}</td>
					<td>${user.requesID}</td>
					<td><a href="edit?id=${user.userId}">APPROVE</a></td>
					<td><a href="delete?id=${user.userId}">REJECT</a></td>
				</tr>
			<%-- </c:forEach> --%>
			<tr><td colspan="7"><a href="${pageContext.request.contextPath}/update"> </a></td></tr>
		</table>
		</div>
	</c:if>
	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->
</body>
</html>