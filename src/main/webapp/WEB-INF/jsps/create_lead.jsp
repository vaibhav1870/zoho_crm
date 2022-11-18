<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create</title>
</head>
<body>
	<h2>Lead | Create</h2>
	<form action="saveLead" method="post">
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Lead Source</td>
				<td><select name="leadSource">
						<option value="tv commercial">TV Commercial</option>
						<option value="radio">Radio</option>
						<option value="news paper">News Paper</option>
						<option value="online">Online</option>
				</select></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form>
</body>
</html>