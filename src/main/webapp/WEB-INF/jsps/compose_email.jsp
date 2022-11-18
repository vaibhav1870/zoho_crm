<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
</head>
<body>
	<h2>Compose Email</h2>
	<form action="sendEmail" method="post">
		<table>
			<tr>
				<td>To</td>
				<td><input type="text" name="to" value="${email }" /></td>
			</tr>
			<tr>
				<td>Subject</td>
				<td><input type="text" name="subject" /></td>
			</tr>
		</table>
		<textarea name="body" rows="8" cols="70"></textarea>
		<table>
			<tr>
				<td><input type="submit" value="send email" /></td>
			</tr>
		</table>


	</form>
</body>
</html>