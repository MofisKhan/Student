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
<form action="requestStudent" method="get" >
	<table>
		<tr>
			<th>Fetch Student Details</th>
		</tr>
		<tr>
			<td>Enter the roll Number</td>
			<td><input type="text" name="roll_num"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="submit"/></td>
			<td><input type="reset" value="reset"/></td>
		</tr>
	</table>
</form>
</body>
</html>