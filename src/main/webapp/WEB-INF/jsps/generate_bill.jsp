<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
</head>
<body>
	<h2>Generate Bill</h2>
	<form action="generate" method="post">
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName"
					value="${contact.firstName }" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName"
					value="${contact.lastName }" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="${contact.email }" /></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" value="${contact.mobile }" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>Amount</td>
				<td><input type="text" name="amount" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Generate Bill" /></td>
			</tr>
		</table>
	</form>
</body>
</html>