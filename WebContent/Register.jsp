<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Inventory</title>
</head>
<body>

<%@include file="header.jsp" %>
<form action="registerStudent" method="post">
<table>
	<tr>
		<td>Roll Number</td>
		<td><input type="text" name="rn"></td>
	</tr>
	
	<tr>
		<td>First Name</td>
		<td><input type="text" name="fn"/></td>
	</tr>
	
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="ln"/></td>
	</tr>
	
	<tr>
		<td><input type="submit" value="submit"/></td>
		<td><input type="reset" value="reset"/></td>
	</tr>
</table>
</form>
</body>
</html>