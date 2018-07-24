<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />	

<title>Profile</title>

</head>
<body>
<%@ include file="banner.jsp"%>

<div style=" margin:5% 5% 5% 43%;  padding:1%; position:absolute;">


<h2>Your Profile</h2>

</div>

<div style=" margin:10% 10% 10% 40%  ; box-shadow: 5px 10px #888888; border:solid 3px black; padding:1% 1% 1% 1%; position:absolute;">

<h3>Name : ${Customer.custName} </h3>
 <h3>Email : ${Customer.email}</h3> 
<h3>Contact : ${Customer.contact}</h3>
<a href="fetchBookings.bus" class="btn large black">Your Bookings</a>
</div>
 

</body>
</html>