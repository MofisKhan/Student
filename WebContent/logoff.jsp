<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Student Inventory</title>
</head>
<body>
	<div class="wrapper">

				<%@include file="header.jsp"%>

	

									<form>
										<table>
										
										<tr>
										
										<td><label>User Type: </label><td> 
										
										<select>
											<option value='student'>student</option>
											<option value='Teacher'>Teacher</option>
											<option value='others'>Others</option>
										</select>
										
										
										</tr>
										
											<tr>
											<td><label>Student ID: </label></td> 
											<td><input type=text name='sid' placeholder='Enter student ID' class='form-control' /></td>
											</tr>
										
											<tr>
											<td><label>Email ID: </label></td>
											<td> <input type=text name='email' placeholder='Enter your email' class='form-control' /></td>
											</tr>
											 
											<tr>
											<td> <label>Password:</label></td>
											<td> <input type=password name='pwd' placeholder='Enter your password' class='form-control' /> </td> 
											</tr>
											
										<tr>
										<td><label>re-enter Password:</label></td>
										<td> <input type=password name='pwd' placeholder='Re-enter your password' class='form-control' /> </td>
										</tr>
										
										<tr>
										
										<td><input type=submit value='CREATE ACCOUNT' class='btn btn-primary' /></td>
										</tr>
									</table>
									</form>

								</div>
							</div>


						</div>
						<!-- /col-9 -->
					</div>
					<!-- /padding -->
				</div>
				<!-- /main -->
			</div>
		</div>
	</div>
</body>
</html>

<script>
	$(document).ready(function() {
		$('#role').change(function() {
			role = $('#role').val();
			if (role != 'patient') {
				$('#plogin').hide();
			} else {
				$('#plogin').show();
			}
		});
	});
</script>