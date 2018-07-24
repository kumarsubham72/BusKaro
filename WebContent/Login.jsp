<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errpage.jsp"%>
<!DOCTYPE>

<html>
<head>
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.uniform.min.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/search.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap  -->


<!-- CSS -->
<link rel="stylesheet" href="css/theme-peach.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/animate.css" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700|Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.png" />



<title>Homepage</title>

</head>
<body class="home">
	<%-- <%@ include file="banner.html"%> --%>


	<!-- Header -->
	<header class="header" role="banner">
		<div class="wrap">
			<!-- Logo -->
			<div class="logo">
				<a href="home.jsp" title="BusKaro"> <img
					src="images/buskaro_orange.png" style="max-width: 25%;"
					alt="BusKaro!" />
				</a>
			</div>
			<!-- //Logo -->

			<!-- Main Nav -->
			<nav role="navigation" class="main-nav">
				<ul>
					<li class="active"><a href="home.jsp" title="">Home</a></li>
					<li><a href="aboutus.html" title="Want To Know More About Us!">About
							us</a></li>

					<li><a title="Register" href="doRegister.bus">Register</a></li>
				</ul>
			</nav>
			<!-- //Main Nav -->
		</div>


		<!-- Login Form Start -->

		<div></div>

		<!-- Login Form END -->

	</header>
	<!-- //Header -->

	<!-- Main -->
	<main class="main" role="main"> <!-- Intro -->
	<div class="site-title-color">
		<div class="wrap">
			<h1 id="formheader" style="background: #EDEDDC;">
				<center>
					<a href="#login" style="color: #34394A;">LOGIN</a>
				</center>
			</h1>
			<form name="myForm" action="signin.bus" method="post"
				onsubmit="return validateForm()" id="login">
				<!-- <span class="login100-form-title p-b-49">Welcome to BusKaro! </span> -->

				<div class="imgcontainer">
					<img src="images/user.png" alt="Avatar" class="avatar"
						style="width: 20%;">
				</div>


				<div class="container">
					<h5 style="color: red; margin-left: 138px">
						<b> ${invalidPass} ${invalidEmail} </b>
					</h5>

					<center>
						<input type="email" class="input100" type="text" name="email"
							placeholder="Enter your Email Id"
							pattern="[a-z0-9._%]+@[a-z0-9.-]+\.[a-z]{2,3}$" required
							title="Format should be like this eg. tyrion@gmail.com"
							style="width: 50%;" required>
					</center>
					<center>
						<input type="password" placeholder="Enter Password"
							name="password" required data-validate="Password is required"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" required
							style="width: 50%;"> <input type="submit"
							class="modalbutton" value="Login" style="width: 20%;"></input>
					</center>



					<button type="button" class="cancelbtn" style="width: 20%;"
						onclick="history.go(-1)">Cancel</button>
					<center>
						<a href="forgetpass.bus" id="forgotpass" style="width: 20%;">Forgot
							password?</a>
					</center>
				</div>

			</form>
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
						<span class="ico phone"></span> +91 2345678912
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

			<div class="copy">

				<nav role="navigation" class="foot-nav">
					<ul>
						<li><a href="home.jsp" title="Home">Home</a></li>
						 

						<li><a href="T&C.html" title="Terms of use">Terms of use</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</footer>
	




</body>
</html>


