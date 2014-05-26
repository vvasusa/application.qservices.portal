<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?xml version="1.0"?>
 
<title>Logical Media</title>
<script type="text/javascript">
  <%String temp = (String) session.getAttribute("MySessionId");%>

var value= "<%=temp%>";

	alert(value); 
	</script>
</head>
<h1>request list</h1>


<c:if test="${loginType=='VISITOR'}">
<a href="${pageContext.request.contextPath}/requestList" method="post">Edit YOur Profile</a>
</c:if>


 <c:if test="${loginType!='null'}"> 
<%-- <c:forEach var="user" items="${adminUser}"> --%> 
<%-- <c:if test="${user.loginType=='null' && user.loginType=='null'}"> --%>
<h1>welcome inside nested if</h1>
 <%-- <c:if test="${user.loginType!='null'}"> 
  <c:if test="${user.loginType=='z'}">  --%>
<table>
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.phoneNo}</td>

					<td>${user.phoneNo}</td>
					<td>${user.loginType}</td>
					</tr>
					</table>
				<%--  </c:forEach>   --%>
				</c:if>
			



<c:if test="${loginType == 'null'}">
<%-- <c:forEach var="user" items="${adminUser}"> --%>
	<%-- <c:if test="${loginType=='VISITOR'}"> --%>
		<h2>request list</h2>
		<h1>To view data please login</h1>
		<a href="${pageContext.request.contextPath}/index" method="post">click
			here for login</a>
	<%-- </c:if> --%>
	</c:if>
	<%-- </c:forEach> --%>
	
	
	<body>
	<%-- <% if( value=="AD02" ) { %>
	
  <DIV>....</DIV> --%>

	<%-- <c:if test="${user.email==user.email}"> --%>
	<%-- <c:if test="true"> --%>
	
	<div>
	
  <%-- <c:forEach var="user" items="${adminUser}"> 
	<c:if test="${user.loginType=='VISITOR'}"> --%>
	
	 <%String temp1 = (String) session.getAttribute("MySessionId");%>
	 <%String temp2 = (String) session.getAttribute("loginType");%>



<c:if test="${loginType == 'VISITOR'}">
    There is a user **attribute** in the session

	<c:forEach var="user" items="${adminUser}"> 
	<%-- <c:if test="${sessionScope.user != null}">
    There is a user **attribute** in the session
</c:if> --%>
		
			<form action="${pageContext.request.contextPath}/update"
				method="post" commandName="requestForm">
				<h3>request list</h3>
				<input type="hidden" name=loginType value="${user.loginType}" />
			INVALID	email ${user.email} 
				
				

				<H1>WELCOME TO VISITOR</H1>
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
						<td><form:errors path="email" /></td>
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
		
	<%-- </c:if>
	 </c:forEach>   --%>
	 
	 </c:forEach>
	 </c:if> 
</div>

	<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -START-->
<div>
<c:if test="${loginType != 'VISITOR'}">
		
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
				<c:forEach var="user" items="${adminUser}">
				<c:if test="${user.loginType=='QA'}">

				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.phoneNo}</td>
					<td>${user.phoneNo}</td>
					<td>${user.phoneNo}</td>
					<%-- <td>${user.requestName}</td>
					<td>${user.requestID}</td> --%>
					<td><a href="${pageContext.request.contextPath}/approve"
						method="post">Approve</a></td>
					<td><a href="${pageContext.request.contextPath}/reject"
						method="post">Reject</a></td>
					<%-- <td><a href="edit?id=${user.userId}"></a></td>
					<td><a href="delete?id=${user.userId}">REJECT</a></td> --%>
				</tr>
				
				<tr>
					<td colspan="7"><a
						href="${pageContext.request.contextPath}/update"> </a></td>
				</tr>
					</c:if>
</c:forEach>
			</table>
		
</c:if>
</div>
<!-- PART TWO FOR DISPLAY REQUEST FOR QA-LEAD -END-->
</body>
</html>