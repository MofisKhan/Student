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
		<div class="box">
			<div class="row">
				<%@include file="header.jsp" %>

				<!-- main -->
				<div class="column col-sm-9" id="main" style='min-height:600px;'>
					<div class="padding">
						<div class="full col-sm-9">

							<!-- content --> 

							<div class="col-sm-12" id="featured">
								<div class="page-header text-muted">LOGIN</div> 
							</div>
							
							
							
							<!--/top story-->
							<div class="row">
								<div class='col-md-6'>
									
									<form action='login' method=post> 
									
										<label>User Type: </label>
										<select class='form-control' name='role' id='role'>
											<option value='student'>Student</option>
											<option value='Teacher'>Teacher</option>
										</select>
										<br/>
										<div id='plogin' style='display: none;'>
										<label>Student ID: </label>
										<input type=text name='pid' placeholder='Enter patient ID' class='form-control' />
										<br/>
										</div>
										<label>Email ID: </label>
										<input type=text name='email' placeholder='Enter your email' class='form-control' />
										<br/>
										<label>Password: </label>
										<input type=password name='pwd' placeholder='Enter your password' class='form-control' />
										<br/>
										<input type=submit value='LOGIN' class='btn btn-primary'/>
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
		if (role!='student') {
			$('#plogin').hide();
		} else {
			$('#plogin').show();
		}
	});
});

</script>