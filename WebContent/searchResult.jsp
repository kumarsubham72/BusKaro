<%@page import="lti.bus.bean.SearchBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="lti.bus.bean.BusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
	
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">


<title>BookKaro!</title>

<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700">
<link rel="shortcut icon" href="images/favicon.png">

</head>

<body>
	<%@ include file="banner.jsp"%>
	<!-- Includes NAV BAR -->
	<%
		List<BusBean> results = (List) session.getAttribute("Buses");
		SearchBean search = (SearchBean) session.getAttribute("Search");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	%>


	<!-- Main -->
	<main class="main" role="main"> <!-- Search -->
	<div
		style="color: #191f26; font-weight: bolder; font-size: 50px; margin: 3%">LIST OF AVAILABLE BUSES </div>
	<!-- //Row -->

	<div class="wrap">
		<div class="row">
			<!--- Content -->
			<div class="full-width content">


				<div class="results">
					<!-- Item -->
					<article class="result">


						<h3 style="text-align: center; margin: 2%; font-weight: bold">${Search.source}
							TO ${Search.destination} AT <%= simpleDateFormat.format(search.getDate()) %></h3>

						<%
								for (BusBean bean : results) {
							%>
						<div class="one heightfix">
							<ul>
								<li><span class="ico people"></span>
									<p>
										<strong><%=bean.getBusType()%> BUS</strong> <br />
									<div class="price">
										Rs.<%=bean.getFare()%>
										</div></li>

								<li><span class="ico luggage"></span>
									<p>
										<strong>Jouney at</strong> <br />
										<div class="price">
										<%=bean.getStartTime()%>
										</div>
									</p>
									</li>

							</ul>
							<div style="width: 20%; display: block; margin: 0 auto;">
								<a href="select.bus?busid=<%=bean.getBusId()%>"
									class="btn grey large">Book Karo!</a>

							</div>

						</div>



						<%
								}
							%>
					</article>
				</div>
				<div class="full-width information">
					<a href="javascript:void(0)" class="close color" title="Close">x</a>
					<p>BusKaro is India's largest emerging online bus ticketing platform,trusted by over 6 million Indians. 
With a sale of over 10,00,000 Bus tickets via web and our bus agents, 
BusKaro stands at the top of the game in bus ticketing. 
BusKaro operates on over 84000 routes and is associated with 2300 reputed bus operators. 
Try the BusKaro experience today.</p>
				</div>

				<!-- //Item -->


			</div>


		</div>
	</div>
	<!--- //Content --> </main>
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
						<span class="ico email"></span> <a
							href="mailto:help@BusKaro.com">help@BusKaro.com</a>
					</p>
				</article>
				<!-- //Column -->

				<!-- Column -->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
						<li class="facebook"><a href="#" title="facebook">facebook</a></li>
						<li class="twitter"><a href="#" title="twitter">twitter</a></li>
						<li class="gplus"><a href="#" title="gplus">google plus</a></li>
						<li class="linkedin"><a href="#" title="linkedin">linkedin</a></li>
						<li class="vimeo"><a href="#" title="vimeo">vimeo</a></li>
						<li class="pinterest"><a href="#" title="pinterest">pinterest</a></li>
					</ul>
				</article>
				<!-- //Column -->
			</div>

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
	<script src="js/search.js"></script>
	<script src="js/scripts.js"></script>

</body>
</html>
 