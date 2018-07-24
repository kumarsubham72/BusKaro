<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<title>Confirm Password</title>

<script type="text/javascript">

	function Validate() {
		var password = document.getElementById("txtPassword").value;
		var confirmPassword = document.getElementById("txtConfirmPassword").value;
		if (password != confirmPassword) {
			alert("Passwords do not match.");
			return false;
		}
		return true;
	} 
</script>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.uniform.min.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/scripts.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- BOOTSTRAP -->

<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- CSS -->
<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%-- <%@taglib uri="http://www.springframework.org/tags" prefix="s"%> --%>
</head>
<body>
   <!-- Header -->
	<header class="header" role="banner">
		<div class="wrap">
			<!-- Logo -->
			<div class="logo">
				<a href="home.jsp" title="BusKaro"> <img
					src="images/buskaro_logo_blue.png"
					style="max-width: 12%; border: 0; vertical-align: middle;"
					alt="BusKaro!" />
				</a>
			</div>
			<!-- //Logo -->

			<!-- Main Nav -->

			<!-- //Main Nav -->
		</div>
	</header>
	<!-- //Header -->

	<!-- Main -->
	<main class="main" role="main"> <!-- Page info --> <header
		class="site-title color">
		<div class="wrap">
			<div class="container">
				<h1>Verify Your Details</h1>
				<nav role="navigation" class="breadcrumbs">
					<ul>
						<li>
							<!-- <a href="home.jsp" title="Home">Home</a> -->
						</li>
						<li><a href="home.jsp" title="Home">Home</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header> <!-- //Page info --> <!-- Registration Form Start--> <f:form
		action="ChangePass.bus" method="post" modelAttribute="forgot">
		<f:input path="password1" style="width: 25%;"
			placeholder="New Password" type="password" id="txtPassword"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"
			title="password must accept one number,uppercase,lowercase,special character"
			required="true" />

		<f:input path="password2" style="width: 25%;"
			placeholder="Re-Enter Password" type="password"
			id="txtConfirmPassword" required="true" />

		<input type="submit" style="width: 15%;" class="modalbutton"
			onclick="return Validate()">
	</f:form><!-- Verification Form End--> </main>
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
							href="mailto:help@Buskaro.com">help@Buskaro.com</a>
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
</body>
</html>


