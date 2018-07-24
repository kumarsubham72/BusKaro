<%@page import="java.text.SimpleDateFormat"%>
<%@page import="lti.bus.bean.SearchBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="js/kendo.all.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Optional theme -->

<script src="js/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<title>TicketKaro!</title>

<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!--   HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
    WARNING: Respond.js doesn't work if you view the page via file://
    [if lt IE 9]> -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<style>
.card {
	background-color: rgb(128, 128, 128);
	font-size: 30px;
	width: 100%;
	padding-bottom: 20px;
}

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
					alt="BusKaro!" />
			</a>
			<a href="home.jsp" title="Home" style="color:white; float:right; text-decoration:none;">Home</a>
		</div>
		<!-- //Logo -->
	</div>
	</header>
	<!-- //Header -->

	<!-- Main -->
	<main class="main" role="main"> <!-- Page info --> <header
		>
	<div class="wrap">
		<div class="container" style="color: #191f26; font-weight: bolder; font-size: 30px; margin: 0 auto;">
			
			</div>
			<nav role="navigation" class="breadcrumbs">
			<ul>
				
			</ul>
			</nav>
		
	</div>
	</header> <!-- //Page info -->
<h1 style="margin: 0 auto; color:#191f26; font-weight:bolder; text-align:center;">YOUR PAYMENT DETAILS</h1>


<%
		SearchBean search = (SearchBean) session.getAttribute("Search");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	%>

	

	<div class="container">
		<div class="div2">
			<p class="a">

				<span><label for="cname"><b>Passenger Name :
							${Customer.custName}</b></label></span><br> <br> <span><label
					for="src"><b>Source : ${Search.source}</b></label></span><br> <br>

				<span><label for="des"><b>Destination :
							${Search.destination}</b></label></span><br> <br> <span><label
					for="bustype"><b>BusType : ${Selected.busType}</b></label></span><br>
				<br> <span><label for="Time"><b>Time :
							${Selected.startTime}</b></label></span><br> <br> <span><label
					for="fare"><b>Fare : Rs.${Selected.fare}</b></label></span> <br> <span><label
					for="cnum"><b>Journey Date : <%= simpleDateFormat.format(search.getDate()) %></b></label></span>
			</p>
			<button class="modalbutton"
				onclick="location.href='payment.jsp';" style="margin:0 auto;width:20%;">
				<i class="fa fa-save"></i> Proceed to Pay
			</button>
			
		</div>
	</div>







	</main>
	<!-- //Main -->

	<!-- Footer -->
	<footer class="footer black" role="contentinfo">
	<div class="wrap">
		<div class="row">
			<!-- Column -->
			<article class="one-half">
			<h6>About us</h6>
			<p>BusKaro is India's largest emerging online bus ticketing platform,trusted by over 6 million Indians. 
With a sale of over 10,00,000 Bus tickets via web and our bus agents, 
BusKaro stands at the top of the game in bus ticketing. 
BusKaro operates on over 84000 routes and is associated with 2300 reputed bus operators. 
Try the BusKaro experience today.</p>
			</article>
			<!-- //Column -->

			<!-- Column -->
			<article class="one-fourth">
			<h6>Need help?</h6>
			<p>Contact us via phone or email:</p>
			<p class="contact-data">
				<span class="ico phone"></span> +91 9876543210
			</p>
			<p class="contact-data">
				<span class="ico email"></span> <a href="mailto:help@BusKaro.com">help@BusKaro.com</a>
			</p>
			</article>
			<!-- //Column -->

			<!-- Column -->
			<article class="one-fourth">
			<h6>Follow us</h6>
			<ul class="social">
				<li class="facebook"><a href="#" title="facebook">facebook</a>
				</li>
				<li class="twitter"><a href="#" title="twitter">twitter</a></li>
				<li class="gplus"><a href="#" title="gplus">google plus</a></li>
				<li class="linkedin"><a href="#" title="linkedin">linkedin</a>
				</li>
				<li class="vimeo"><a href="#" title="vimeo">vimeo</a></li>
				<li class="pinterest"><a href="#" title="pinterest">pinterest</a>
				</li>
			</ul>
			</article>
			<!-- //Column -->
		</div>
		<!-- <script>
		var generatePDF = function() {
			kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
				kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
			});
		}
	</script> -->
		<div class="copy">

			<nav role="navigation" class="foot-nav">
			<ul>
				<li><a href="home.jsp" title="Home">Home</a></li>
				 
				<li><a href="aboutus.html" title="About us">About us</a></li>
				<li><a href="T&C.html" title="Terms of use">Terms of use</a></li>
			</ul>
			</nav>
		</div>
	</div>
	</footer>
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

</body>
</html>
