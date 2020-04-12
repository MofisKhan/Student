<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Inventory</title>
<style>
.header{
	background-color: black;
	padding:8px;
	border-radius: 7px;
}

ul#menu li{
	display: inline;
	padding:5px;
	color:white;
}
#menu #sign-in #sign-up {
	float:right;
}
</style>
</head>
<body>
<div class="header">
	<ul id="menu">
		<li><a href="index.jsp">HOME</a></li>
		<li><a href="Register.jsp">Registration</a></li>
		<li><a href="Investigate.jsp">Investigate</a></li>
		<li><a href="login.jsp">signIn</a></li>
		<li><a href="logoff.jsp">signUp</a></li>
	</ul>
</div>
</body>
</html>