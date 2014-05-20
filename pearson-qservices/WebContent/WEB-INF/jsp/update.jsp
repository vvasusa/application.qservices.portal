<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	YOUR DETAILS UPDATED SUSSUESFULLY.

	
	${requestForm.firstName}
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


				</tr>
				<%-- <c:forEach var="user" items="${requestList}"> --%>

				<tr>
					<td>${requestForm.firstName}</td>
					<td>${requestForm.lastName}</td>
					<td>${requestForm.email}</td>
					<td>${requestForm.phoneNo}</td>
					<td>${requestForm.requestName}</td>
					<td>${requestForm.requestId}</td>
					<td colspan="7"><a href="${pageContext.request.contextPath}/requestList/"
					id="home_front" title="Request"><span>Edit</span></a></td>
					
					<%-- <td><a href="edit?id=${user.userId}"></a></td> --%>

				</tr>
				<%-- </c:forEach> --%>
				<tr>
					
				</tr>
			</table>
			
		</div>
	
	
</body>
</html>