<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br/>
<h5><a href="view">Create New Lead</a></h5>
<h2>List Of Locations</h2>
<table border="1">
	<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Lead Source</th>
		<th>mobile</th>
	</tr>
<c:forEach items="${leads}" var="lead">
	<tr>
		<td>${lead.id }</td>
		<td><a href="getLeadById?id=${lead.id }">${lead.firstName }</a></td>
		<td>${lead.lastName }</td>
		<td>${lead.email }</td>
		<td>${lead.leadSource }</td>
		<td>${lead.mobile }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>