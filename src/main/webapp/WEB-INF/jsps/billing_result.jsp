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
<h2>List Of Locations</h2>
<table border="1">
	<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Lead Source</th>
		<th>Mobile</th>
		<th>Product Name</th>
		<th>Amount</th>
	</tr>
	<c:forEach items="${bills}" var="bill">
	<tr>
	<td>${bill.id }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>