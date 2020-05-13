<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head style="background-color: #808080">
<meta charset="utf-8" />
<title>Ticket Manager</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.sidenav {
	height: 100%; /* 100% Full-height */
	width: 0; /* 0 width - change this with JavaScript */
	position: fixed; /* Stay in place */
	z-index: 1; /* Stay on top */
	top: 0; /* Stay at the top */
	left: 0;
	background-color: #111; /* Black*/
	overflow-x: hidden; /* Disable horizontal scroll */
	padding-top: 60px; /* Place content 60px from the top */
	transition: 0.5s;
	/* 0.5 second transition effect to slide in the sidenav */
}

/* The navigation menu links */
.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #cc66ff;
	display: block;
	transition: 0.3s;
}
#welcome{
background-color: #0000FF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	text-transform:uppercase;
	cursor: pointer;
	width: 100%;
}
h1 {
	background-color: #0066ff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 20px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
body {
background-repeat:no-repeat;
background-size:cover;
display:flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
	background-image: url("https://wonderfulengineering.com/wp-content/uploads/2016/01/singapore-wallpaper-1.jpg");
}
#heading{
font-size: medium;
text-align: center;
text-transform: uppercase;
margin-left: 100px;
}
</style>
</head>
<body>
<body>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<h1>Ticket Administration</h1>
		<a href="/new">
			<button
				onclick="document.getElementById('id01').style.display='block'"
				style="width: auto;" class="btn btn-success">User Regestrartion</button>
		</a> <a href="/newbooking">
			<button
				onclick="document.getElementById('id01').style.display='block'"
				style="width: auto;" class="btn btn-success">Travel Booking</button>
		</a> <a href="/showBooking">
			<button
				onclick="document.getElementById('id01').style.display='block'"
				style="width: auto;" class="btn btn-success">SHOW BOOKING</button>
		</a>


	</div>
<div id="heading">
	<span onclick="openNav()" id="welcome">WELCOME TO RESERVATION PORTAL</span></div>
	<!-- <span onclick="openNav()">CLICK ME</span>


	<div id="main">...</div> -->

</body>
<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
		document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
		document.body.style.backgroundColor = "white";
	}
</script>

</html>