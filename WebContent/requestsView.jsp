
<%@page import="com.pojo.student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Student Inventory</title>
</head>

<body>
			
							<div>
									<%
										List<student> student = (List<student>) request.getAttribute("student");
									%>
									<table class='table'>
										<tr>
											<th>Roll Number</th>
											<th>First Name</th>
											<th>Last Name</th>
										</tr>
										<%
											if (student!= null)
													for (student s : student) {
										%>
										<tr>
											<td><%= s.getRollnum() %></td>
											<td><%= s.getFname() %></td>
											<td><%= s.getLname() %></td>

										</tr>
										<%
											}
										%>
									</table>
								
							</div>
</body>
</html>