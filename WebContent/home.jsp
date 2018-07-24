<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />


<title>BusKaro!</title>
<script type="text/javascript">
	function Validate() {
		var source = document.getElementById("source").value;
		var destination = document.getElementById("destination").value;
		if (source == destination) {
			alert("Route not Possible. Select Appropriate Route.");
			return false;
		}
		return true;
	}
</script>
</head>
<body class="home">
	<%@ include file="banner.jsp"%>
	<!-- Includes NAV BAR -->


	<!-- Main -->
	<main class="main" role="main"> <!-- Intro -->
	<div class="intro">
		<div class="wrap">
			<div class="textwidget">
				<h1 style="color: black;">BUS KARO!</h1>
				<h2 class="">Travel Easy</h2>

				<form role="form" action="search.bus" method="post" id="searchbus">
					<!-- Row -->
					<div class="f-row">

						<div class="form-group select one-third">
							<label>Source</label> <select name="source" id="source">
								<option value="MUMBAI">Mumbai</option>
								<option value="INDORE">Indore</option>
								<option value="AHMEDABAD">Ahemdabad</option>
								<option value="NAGPUR">Nagpur</option>
							</select>
						</div>
						<div class="form-group select one-third">
							<label>Destination</label> <select name="destination"
								id="destination">
								<option value="INDORE">Indore</option>
								<option value="AHMEDABAD">Ahemdabad</option>
								<option value="NAGPUR">Nagpur</option>
								<option value="MUMBAI">Mumbai</option>
							</select>

						</div>
						<div class="form-group datepicker one-third">
							<label for="dep-date">Journey date</label> <input type="text"
								id="dep-date" onchange="fun();" required
								placeholder="Select Journey Date" /> <input type="hidden" id="real-date"
								name="date" />
						</div>
					</div>
					<script>
						function fun() {
							var d = document.getElementById("dep-date");
							var t = d.value;

							t = t.replace("/", "-");
							/* t=t.replace("/", "-"); */
							t1 = t.slice(0, 6);
							t2 = t.slice(8, 10);
							t = t1 + t2;
							console.log(t);
							document.getElementById("real-date").value = t;

						}
					</script>

					<div class="f-row"
						style="text-align: center; float: inherit; margin-bottom: 2%">
						<div class="form-group">
							<button type="submit" class="btn large black"
								onclick="return Validate();">Search</button>
						</div>
					</div>
				</form>


			</div>
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
					<p>BusKaro is India's largest emerging online bus ticketing
						platform,trusted by over 6 million Indians. With a sale of over
						10,00,000 Bus tickets via web and our bus agents, BusKaro stands
						at the top of the game in bus ticketing. BusKaro operates on over
						84000 routes and is associated with 2300 reputed bus operators.
						Try the BusKaro experience today..</p>
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
			</div>

			<div class="copy">

				<nav role="navigation" class="foot-nav">
					<ul>
						<li><a href="#" title="Home">Home</a></li>
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