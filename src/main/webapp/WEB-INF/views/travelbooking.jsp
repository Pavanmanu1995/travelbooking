<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
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

h1 {
	background-color: #ff4d4d;
	color: yellow;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

body {
	background-repeat: no-repeat;
	background-size: cover;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image:
		url("https://images.fineartamerica.com/images-medium-large-5/the-merlion-fountain-and-marina-bay-sands--singapore-luciano-mortula.jpg");
}
</style>
<title>New Booking</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center" id="box">
		<h1>Book Ticket</h1>

		<form:form action="/saveBooking" method="post" name="booking"
			modelAttribute="booking">
			<table>
				<tr>
					<td>Select User</td>
					<td><select name="userId" class="form-control" id="user_id">
							<c:forEach var="user" items="${users}">
								<option value="${user.userId }">${user.userName }</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td>Source</td>
					<td><form:input type="text" path="source" class="form-control"
							id="user_source" /><span id="source_error"
						style="color: crimson; font-weight: bold;"></span></td>
				</tr>
				<tr>
					<td>Destination</td>
					<td><form:input type="text" path="Destination"
							class="form-control" id="destination" /><span
						id="destination_error" style="color: crimson; font-weight: bold;"></span></td>
				</tr>
				<tr>
					<td>DATE OF JOURNEY</td>
					<td><form:input type="date" placeholder="custom date"
							class="form-control" data-date="" data-date-format="DD-MM-YYYY"
							path="DateOfJourney" id="doj" /><span id="date_error"
						style="color: crimson; font-weight: bold;"></span></td>

				</tr>
				<tr>
					<td>Distance(KM)</td>
					<td><form:input type="numeric" path="Distance"
							class="form-control" id="distance" /><span id="distance_error"
						style="color: crimson; font-weight: bold;"></span></td>
				</tr>
				<tr>
					<td>Food Preferences</td>
					<td><form:radiobutton path="FoodPreferences"
							value="vegetarion" name="food" 	 />VEGETARION <form:radiobutton
							path="FoodPreferences" value="nonvegetarion" name="food" />NON-VEGETARION<span
						id="food_error" style="color: crimson; font-weight: bold;"></span></td>
				</tr>
				<tr>
					<td>TravellingWith</td>
					<td><form:checkbox path="TravellingWith" value="visa"
							/>VISA<form:checkbox path="TravellingWith"
							value="passport" />PASSPORT<span id="travell_error"
						style="color: crimson; font-weight: bold;"></span></td>
				</tr>
			</table>
			<button type="submit" class="btn btn-danger" id="btn">BOOK</button>
		</form:form>
	</div>

</body>
<script type="text/javascript" src="/resources/js/booking.js"></script>
<script>
	$(document).ready(function() {

		$("#btn").click(function() {
			var name = $("#user_source").val();
			var patt = /^[a-zA-Z][a-z\s]*$/;
			var dest = $("#destination").val();
			var distance = $("#distance").val();
			var user = $("#user_id").val();
			var date = $("#doj").val();
			var user_date = new Date(date);
			var sys_date = new Date();
			var food = $("input[type=radio]:checked").val();
			 var count= $('input:checkbox:checked').length;
			//flag variablle
			
			var isName=true;
			var isDest=true;
			var isDistance=true;
			var isDate=true;
			var isradio=true;
			var isCheck=true;
			if (name == "") {
				$("#source_error").html("**This filed is required");
				$("#user_source").css("color ","red");
				isName= false;
			} else if (!patt.test(name)) {
				$("#source_error").html("**Source Doesn't match");
				isName= false;
			}
			if (dest == "") {
				$("#destination_error").html("**This filed is required");
				isDest= false;
			} else if (!patt.test(dest)) {
				$("#destination_error").html("**Destination Doesn't match");
				isDest= false;
			}
			if (distance < 201) {
				$("#distance_error").html("**Distance should be > 200");
				isDistance=false;
			}
			if (user_date <= sys_date) {
				$("#date_error").html("**Date should be Future date");
				isDate= false;
			}
			if(!food){
				$("#food_error").html("**Atleast one Should be selected");
				isRadio=false;
			}
			if(count<1){
				$("#travell_error").html("**Atleast one Should be selected");
				isCheck=false;
			}
			if(isDate&&isDistance&&isDest&&isName&&isRadio&&isCheck){
				return true;
			}
			else{
				return false;
			}
		});
	});
</script>

</html>