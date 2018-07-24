<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="css/style.css">
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 60%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #000;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 60%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: grey;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
}
label{
margin:-1%;}
</style>

<title>PayKaro!</title>
</head>
<body>

	<div class="row">
		<div class="col-75">
			<div class="container">

				<form name="myform" onsubmit="return paymentVal()"
					action="ticket.bus" method="post">
					<div class="col-50">
						<h2 style="font-weight:bold;">Payment</h2>
						<label for="fname">Accepted Cards</label>
						<div class="icon-container">
							<img src="img/pics/mastercard.jpg"
								style="width: 40px; height: 40px;" /> <img
								src="img/pics/visa.jpg" style="width: 40px; height: 40px;" />
						</div>
						<div>
								<label for="ccnum">Credit card number</label> 
								
								<input type="text" id="ccnum" name="cardnumber" style="width:50%;"
								placeholder="Enter your number" pattern="[0-9]{16}"
								maxlength="16" title="card number must be of 16 digit" required />
								
								
							<label for="expdate">Expiry Date</label> <input type="text" style="width:50%;"
								id="expmonth" name="expirydate" placeholder="MM/YY" pattern="^((0[1-9])|(1[0-2]))[\/]*((0[0-9])|(1[0-9]))$" required/>

							<br> <label for="cvv">CVV</label> <input type="password" style="width:50%;"
								id="cvv" name="cvv" placeholder="CVV" pattern="[0-9]{3}"
								title="3 digits CVV only" required/>
								<input type="submit" value="Submit" class="modalbutton" style="width:25%;">
						</div>
					</div>
					</form>
				
			
			</div>

			
		</div>
		
</body>
<script src="js/jquery.min.js"></script>
<script src="js/test.js"></script>

</html>