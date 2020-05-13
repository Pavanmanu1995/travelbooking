<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head style="background-color: #DC143C">
<meta charset="utf-8" />
<title>Booking Manager</title>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

/* Full-width input fields */
input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h1 {
	background-color: #FF0000;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h2 {
	background-color: #0000FF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}
body {
background-repeat:no-repeat;
background-size:cover;

  justify-content: center;
  align-items: center;
  height: 100vh;
  background-image: url("https://a-static.besthdwallpaper.com/dubai-cityscape-wallpaper-2560x1600-28567_7.jpg");
}
button:hover {
	opacity: 0.8;
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
#box2{
background-color: white;
	margin: 210px;
	margin-top: 100px;
	display: block;
	border: 2px solid #000;
	border-radius: 35px:
	text-align: center;
	border-radius: 20px;
}
</style>
</head>
<body>
<body>
	<div align="center" id="box">
		<h1>Booking Details</h1>
		<form:form method="post" action="/showbookingdetails">

			<a href="/showfood"> </a>
			<table border="1" cellpadding="10">
				<tbody>
					<td>SELECT USER</td>
					<td><select name="userId">
							<c:forEach var="user" items="${users}">
								<option value="${user.userId}">${user.userName}</option>
							</c:forEach>
					</select>
					<tr>
						<td>From Date</td>
						<td><input type="date" data-date-format="DD-MM-YYYY" name="date"  /></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" style="width: auto;" value="Show Booking" class="btn btn-warning spinner-border spinner-border-sm">
		</form:form>
	</div>
	<div align="center" id="box2">
		<h2>Ticket List</h2>
		<a href="/showbooking"></a>

		<table border="1" cellpadding="10">
			<thead>
				<tr>
					<th>User Name</th>
					<th>Traveling To</th>
					<th>From</th>
					<th>Price</th>
					<th align="center">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${reg}" var="booking">
					<tr>
						<td><c:out value="${booking.user.userName}" /></td>
						<td><c:out value="${booking.destination}" /></td>
						<td><c:out value="${booking.source}" /></td>
						<td><c:out value="${booking.price}" /></td>

						<td><a href="/edit/${booking.user.userId}/${booking.bookingId}"  ><button
									onclick="document.getElementById('id01').style.display='block'"
									style="width: auto;" class="btn btn-success">Edit</button></a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>