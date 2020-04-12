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


							
							<!--/top story-->
							<div class="row">
								<h1>Student Inventory Details</h1>
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