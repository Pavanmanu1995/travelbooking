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

h1 {
	background-color: #00BFFF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
body {
background-repeat:no-repeat;
background-size:cover;
  justify-content: center;
  align-items: center;
  height: 100vh;
	background-image: url("https://www.ecopetit.cat/wpic/mpic/50-504951_tower-bridge-in-london-uk-wall-mural-wall.jpg");
}
#box{
background-color: white;
	margin: 210px;
	margin-top: 100px;
	display: block;
	border: 2px solid #000;
	border-radius: 35px:
	text-align: center;
	border-radius: 20px;
}
td{
text-transform: capitalize;
}
</style>
<title>New Booking</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center" id="box">
		<h1>Update Booking</h1>

		<form:form action="/updatenewbooking/${booking.bookingId}/${booking.user.userId }" onsubmit="return validate()" method="post" name="booking" 
			modelAttribute="booking">
			<table>
				<tr>
					<td>Source</td>
					<td><form:input type="text" path="source" class="form-control" /></td>
				</tr>
				<tr>
					<td>Destination</td>
					<td><form:input type="text" path="Destination" class="form-control" /></td>
				</tr>
				<tr>
					<td>Date Of Journey</td>
					<td><form:input type="date" placeholder="custom date" class="form-control" 
							data-date="" data-date-format="DD-MM-YYYY" path="DateOfJourney" /></td>

				</tr>
				<tr>
					<td>Distance(KM)</td>
					<td><form:input type="numeric" path="Distance" class="form-control" /></td>
				</tr>
				<tr>
					<td>Food Preferences</td>
					<td><form:radiobutton path="FoodPreferences" 
							value="vegetarion" />VEGETARION <form:radiobutton
							path="FoodPreferences" value="nonvegetarion" />NON-VEGETARION</td>
				</tr>
				<tr>
					<td>Travelling With</td>
					<td><form:checkbox path="TravellingWith" value="visa" />VISA<form:checkbox
							path="TravellingWith" value="passport" />PASSPORT</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-info">Update Book</button>
		</form:form>
	</div>

</body>
<script type="text/javascript" src="/resources/js/booking.js"></script>


</html>