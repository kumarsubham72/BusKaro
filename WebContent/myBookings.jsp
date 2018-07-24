<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Bookings</title>
</head>
<style>
table th{text-align:center;}
</style>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<%@ include file="banner.jsp"%>
	<h2><b>Bookings of ${Customer.custName}</b></h2>

	<table border="1">
		
			
			<tr>
			<th>Bus Type</th>
			<th>Departure Time</th>
			<th>Fare(Rs.)</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Seat No.</th>
			<th>Date of Journey</th>
			
			</tr>
				<c:forEach items="${Tickets}" var="ticket">
			<tr>
			<td>${ticket.bus.busType}</td>
				<td>${ticket.bus.startTime}</td>
				<td>${ticket.bus.fare}</td>
				<td>${ticket.bus.fest.source}</td>
				<td>${ticket.bus.fest.destination}</td>
				<td>${ticket.seatNo}</td>
				<td>${ticket.date}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>