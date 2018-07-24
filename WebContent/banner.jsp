<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="lti.bus.bean.CustomerBean"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>


</head>
<body>
	<header class="header" role="banner">
		<div class="wrap">
			<!-- Logo -->
			<div class="logo">
				<a href="home.jsp" title="BusKaro"> <img src="images/buskaro_orange.png" style="max-width:25%;"
					alt="BusKaro!" />
				</a>
			</div>
			<!-- //Logo -->

			<!-- Main Nav -->
			<nav role="navigation" class="main-nav">
				<ul>
					<li class="active"><a href="home.jsp" title="">Home</a></li>
					<li><a href="aboutus.html" title="About US">About US</a></li>




					<!-- Login through Modal or input tag -->
					


					<%
	 if(!(session.getAttribute("Customer")==null))
	 {
	String name=((CustomerBean) session.getAttribute("Customer")).getCustName();
	%>

					<li><a style="width: auto;" title="logout" href="logout.bus">Logout</a>
					<li><a title="" href="profile.jsp"><%=name %>
					</a></li>


					<%
	 }
	 else
	 {
		 %>
					<li><a
						href="Login.jsp"
						style="width: auto;" title="login">Login</a> <!-- Login through Modal or input tag -->
					</li>
					<li><a title="" href="doRegister.bus">Register</a></li>
					<%
		 
	 }
	
	%>




				</ul>
			</nav>
			<!-- //Main Nav -->
		</div>
	</header>

	
	


</body>
</html>