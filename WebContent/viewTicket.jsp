<%@page import="java.text.SimpleDateFormat"%>
<%@page import="lti.bus.bean.SearchBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">


<script src="js/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/kendo.all.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<title>SaveKaro!</title>

<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />




<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<style>
/* .card {
	background-color: rgb(128, 128, 128);
	font-size: 30px;
	width: 100%;
	padding-bottom: 20px;
} */

.div2 {
	width: 100%;
	/* height: 1200px; */
	padding: 50px;
	border: 1px solid #191f26;
	margin:0 auto;
	color:#191f26;
	font-family: 'Montserrat', sans-serif;
    font-weight: 400;
	
}

 .a {
	text-align: center;
	font-weight:bolder;
}
label
{
font-weight:bolder;
}
.breadcrumbs				{padding:40px 0 0;font-weight:500;position:absolute;color:white; }
.breadcrumbs li				{float:left;padding:0;}
.breadcrumbs a 				{position:relative;color:#fff;}
.breadcrumbs li a:after 		{content:"\005C";font-weight:400;padding:0 8px;color:#fff;}
.breadcrumbs a:hover,
.breadcrumbs a:focus 		{color:#191F26;}

</style>
<body
	style="background: #ff9999; font-family: Lucida Console; color: #40e0d0">
	<%-- 		<jsp:include page="banner.jsp" /> --%>

	<!-- Header -->
	<header class="header" role="banner">
	<div class="wrap">
		<!-- Logo -->
		<div class="logo">
			<a href="home.jsp" title="BusKaro"> <img src="images/buskaro_orange.png" style="max-width:12%;"
					alt="LOGO COMES HERE" />
			</a>
			<a href="home.jsp" title="Home" style="color:white; float:right; text-decoration:none;">Home</a>
		</div>
		<!-- //Logo -->
	</div>
	</header>
	<!-- //Header -->

<%
		SearchBean search = (SearchBean) session.getAttribute("Search");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	%>
	<!-- Main -->
	<main class="main" role="main"> <!-- Page info --> <header
		>
	<div class="wrap">
		<div class="container" style="color: #191f26; font-weight: bolder; font-size: 30px; margin: 0 auto;">
			
			</div>
			<nav role="navigation" class="breadcrumbs">
			<ul>
				<li></li>
			</ul>
			</nav>
		
	</div>
	</header> <!-- //Page info --> <!-- <h1><b><center>Your payment has been confirmed</center></b> </h1> -->
	
	<h1 style="margin: 0 auto; color:#191f26; font-weight:bolder; text-align:center;">YOUR PAYMENT HAS BEEN RECEIVED</h1>
	
	<div style="color:#191f26;">YOUR BOOKING DETAILS</div> <!-- <center>
		<img src="img/pics/icon.jpg" />
	</center> -->
	<button class="btn btn-primary" onclick="generatePDF()">
		<i class="fa fa-save"></i> Save as PDF
	</button>
	<div id="formConfirmation">
		<div class="container">
			<div class="div2">
				<div class="a">

					<div>
						<label for="cname">Passenger Name</label> :	${Customer.custName}
					</div>
					<div>
						<label for="src">Source</label> : ${Search.source}
					</div>
					<div>
						<label for="des">Destination</label> : ${Search.destination}
					</div>
					<div>
						<label for="bustype">BusType</label> : ${Selected.busType}
					</div>
					<div>
						<label for="Time">Time</label> :${Selected.startTime}
					</div>
					<div>
						<label for="fare">Fare</label> : Rs.${Selected.fare}
					</div>
					<div>
						<label for="cnum">Journey Date</label> : <%= simpleDateFormat.format(search.getDate()) %>
					</div>

				</div>
				<table style="width: 100%">
					<tr>
						<th>Cancellation cut off time</th>
						<th>% Of Deduction On Total Amount</th>
					</tr>
					<tr>
						<td>6 Hours to 12 Hours</td>
						<td>35%</td>
					</tr>
					<tr>
						<td>12 Hours to 18 Hours</td>
						<td>30%</td>
					</tr>
					<tr>
						<td>18 Hours to 24 Hours<</td>
						<td>20%</td>
					</tr>
					<tr>
						<td>More than 24 Hours</td>
						<td>10%</td>
					</tr>
				</table>


				<p>
				<h2>
					<b><u> Cancellation & Refund Policy:</u></b>
				</h2>
				<br> <b>1) Cancellation policy</b> <br> ReserveYourRide
				will process the ticket cancellation request from You as per the
				cancellation/refund policy of the bus operator. The cancellation fee
				and the period taken to process the refund will differ for each bus
				operator. Please refer to the bus operator's cancellation policy. <br>
				<br> <b> 2) How does the customer cancel a ticket?</b> <br>
				Please call on 080-3941 2345 for all cancellation related queries.
				Our customer support team will help you process the request as per
				the cancellation policy of the bus operator.


			</div>
		</div>

	</div>





	</main>
	<!-- //Main -->

	<!-- //Footer -->

	<!-- Preloader -->
	<div class="preloader">
		<div id="followingBallsG">
			<div id="followingBallsG_1" class="followingBallsG"></div>
			<div id="followingBallsG_2" class="followingBallsG"></div>
			<div id="followingBallsG_3" class="followingBallsG"></div>
			<div id="followingBallsG_4" class="followingBallsG"></div>
		</div>
	</div>
	<!-- //Preloader -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/jquery.datetimepicker.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/scripts.js"></script>

	<script>
		var generatePDF = function() {
			kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
				kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
			});
		}
	</script>
</body>
</html>

