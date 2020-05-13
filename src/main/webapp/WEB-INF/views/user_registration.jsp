<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<meta charset="ISO-8859-1">
<style>
h1 {
	background-color: #cc66ff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

#box {
	background-color: white;
	margin: 210px;
	margin-top: 100px;
	display: block;
	border: 2px solid #000;
	border-radius: 35px:                                      
	text-align: center;
	border-radius: 20px;
}

body {
	background-repeat: no-repeat;
	background-size: cover;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image:
		url("https://picfiles.alphacoders.com/313/313400.jpg");
}
</style>
<title>REGISTER USER</title>
</head>
<body>
	<div align="center" id="box" class="form-group mx-sm-3 mb-2">
		<h1>Register User</h1>
		<div>
			<form:form name="myform" action="/save" method="post"
				modelAttribute="user" id="myform">
				<table>
					<tr>
						<td><label for="userName">User Name</label></td>
						<td><form:input path="userName" class="form-control"
								id="userName" /><span id="name"
							style="color: crimson; font-weight: bold;"></span></td>
					</tr>

					<tr>
						<td><label for="age">Age</label></td>
						<td><form:input type="text" path="Age" class="form-control"
								id="age" /><span id="userage"
							style="color: crimson; font-weight: bold;"></span></td>
					</tr>

				</table>
				<br>
				<button type="submit" class="btn btn-primary" id="btn">REGISTER</button>
			</form:form>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {

		$("#btn").click(function() {
			var name = $("#userName").val();
			var patt = /^[a-z][a-z\s]*$/;
			var age = $("#age").val();

			//flag variable
			var isname = true;
			var isAge = true;
			if (name == "") {
				$("#name").html("**This filed is required");
				isname = false;
			} else if (!patt.test(name)) {
				$("#name").html("**Name Doesn't match");
				isname = false;
			}

			if (age < 19) {
				$("#userage").html("**Age should be > 18");
				isAge = false;
			}
			if (isname && isAge) {
				return true;
			} else {
				return false;
			}
		});
	});
</script>

</html>