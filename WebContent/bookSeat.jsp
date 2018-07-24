<%@page import="lti.bus.bean.BookingBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SeatKaro!</title>
<!-- <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> -->
<link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css">
<!-- 	<link rel="stylesheet" type="text/css" href="css/style.css">
 -->
<style>




.btn 		{border:none;text-transform:uppercase;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;color:#fff !important;display:inline-block;text-align:center;max-width:100%;}
.btn.small 	{font-size:12px;padding:8px 14px;}
.btn.medium 	{font-size:15px;padding:11px 20px;min-width:142px;}
.btn.large	{font-size:17px;width:200px;height:54px;line-height:54px;padding:0 14px;}
.btn.huge 	{font-size:20px;width:270px;height:70px;line-height:70px;padding:0 14px;}

.btn.white 	{color:#191F26 !important;}
.btn.full 	{width:100%;}
.btn.color:hover,.btn.color:focus,.btn.white:hover,.btn.white:focus {background:#191F26 !important;color:#fff !important; font-weight: bold;}
.btn.black:hover,.btn.black:focus,.cta .btn:hover,.cta .btn:focus 	{background:#3a78c3 !important;color:#000 !important; font-weight: bold;}

.more 				{font-weight:600;padding-top:2px;display:inline-block;position:relative;text-decoration:none;}
.more:after 			{content:"";position:absolute;left:0;bottom:-3px;opacity:0;-ms-opacity:0;width:0;}
.more:hover:after,
.more:focus:after 		{opacity:1;-ms-opacity:1;width:100%;}

.back {background:#858585;} /* #3a78c3 */
.header 				{float:left;width:100%;background:#34394A;height:80px;margin:-0.5%;}
.header > .wrap		{display:table;height:80px;}
.logo					{display:table-cell;vertical-align:middle;padding:5px 0;}



/* Main NAV */
.main-nav 						{float:right;font-size:14px;text-transform:uppercase;position:absolute;margin-left: 50%;}
.main-nav ul > li > a 				{color:#858585;border-radius:0;absolute;}
.main-nav ul > li.active > a,
.main-nav ul > li.active > a:hover,
.main-nav ul > li.active > a:focus,
.main-nav ul > li:hover > a,
.main-nav ul > li:focus > a				{color:#F2836B;}

.main-nav li:hover > ul 		{display:block;}
.main-nav ul ul   				{display:none;position: absolute; top: 100%;margin-right:10px;min-width:200px;background:#fff;-webkit-box-shadow:4px 6px 8px 0 rgba(0, 0, 0, 0.15);-moz-box-shadow:4px 6px 8px 0 rgba(0, 0, 0, 0.15);box-shadow:4px 6px 8px 0 rgba(0, 0, 0, 0.15);-webkit-border-radius:0 0 3px 3px;-moz-border-radius:0 0 3px 3px;border-radius:0 0 3px 3px;z-index:9999;-webkit-transition: all .3s ease .15s;-moz-transition: all .3s ease .15s;-o-transition: all .3s ease .15s;-ms-transition: all .3s ease .15s;transition: all .3s ease .15s;}
.main-nav ul ul li				{padding:0;}
.main-nav ul ul li a 				{display:block;color:#191F26;font-size:13px;padding:9px 15px 7px;}
.main-nav ul ul li:hover a 		{color:#fff;background:#191F26;}
.main-nav ul ul li:last-child a	{-webkit-border-radius:0 0 3px 3px;-moz-border-radius:0 0 3px 3px;border-radius:0 0 3px 3px;}
.main-nav ul ul li   				{float: none; position:relative;}
.main-nav ul ul ul   			{position: absolute;  top:0;margin-right:0;}

.main-nav li:hover > div 			{display:block;}





body {
	font-family: 'Montserrat', sans-serif;
	font-weight: 400;
	background: #EDEDDC;
	color: #191F26;
}

a {
	color: #b71a4c;
}

.front-indicator {
	width: 145px;
	margin: 5px 32px 15px 32px;
	background-color: #f6f6f6;
	color: #adadad;
	text-align: center;
	padding: 3px;
	border-radius: 5px;
}

.wrapper {
	width: 100%;
	text-align: center;
	margin-top: 150px;
}

.container {
	margin: 0 auto;
	width: 500px;
	text-align: left;
}

.booking-details {
	float: left;
	text-align: left;
	margin-left: 30px;
	font-size: 12px;
	position: relative;
	height: 401px;
	/* border: 3px solid #191F26;
			border-left:0px; */
	padding-left: 10px;
	margin-top: -97px;
}

.booking-details h2 {
	margin: 25px 0 20px 0;
	font-size: 17px;
}

.booking-details h3 {
	margin: 5px 5px 0 0;
	font-size: 14px;
}

div.seatCharts-cell {
	/* 1 to 9 numbers */
	color: #182C4E;
	height: 25px;
	width: 25px;
	line-height: 25px;
}

div.seatCharts-seat {
	/* seat numbers */
	color: #FFFFFF;
	cursor: pointer;
}

div.seatCharts-row {
	height: 35px;
}

div.seatCharts-seat.available {
	background-color: #B9DEA0;
}

div.seatCharts-seat.available.first-class {
	/* 	background: url(vip.png); */
	background-color: #3a78c3;
}

div.seatCharts-seat.focused {
	background-color: #F2836B;
}

div.seatCharts-seat.selected {
	background-color: #29A1A5;
}

div.seatCharts-seat.unavailable {
	background-color: #191F26;
}

div.seatCharts-container {
	border: 3px solid #191F26;
	width: 200px;
	padding: 20px;
	float: left;
	margin-top: -100px;
}
/* .booking-details, div.seatCharts-container{ display:inline-block;} */
div.seatCharts-legend {
	padding-left: 0px;
	position: absolute;
	bottom: 16px;
}

ul.seatCharts-legendList {
	padding-left: 0px;
}

span.seatCharts-legendDescription {
	margin-left: 5px;
	line-height: 30px;
}

.checkout-button {
	display: block;
	margin: 10px 0;
	font-size: 14px;
}

#selected-seats {
	max-height: 90px;
	overflow-y: none;
	overflow-x: none;
	width: 170px;
}
</style>

<script src="js/jquery.min.js"></script>
	<script src="js/jquery.seat-charts.js"></script>
	<script>
	
	
	
	
	
	
	
	
	 var seat_no;
		var firstSeatLabel = 1;

		$(document).ready(function () {
			var $cart = $('#selected-seats'),
				$counter = $('#counter'),
				
				sc = $('#seat-map').seatCharts({
					map: [
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'ff_ff',
						'fffff',
					],
					seats: {
						f: {
							// price   : 0, //Seat Fare According to BUS
							classes: 'first-class', //your custom CSS class
							category: ''
						},


					},
					naming: {
						top: false,
						getLabel: function (character, row, column) {
							return firstSeatLabel++;
						},
					},
					legend: {
						node: $('#legend'),
						items: [
							['f', 'available', 'Available Seat'],
							['f', 'unavailable', 'Already Booked']
						]
					},
					click: function () {
						
						if (this.status() == 'available') {
							//let's create a new <li> which we'll add to the cart items
							// $("#book")

							console.log(sc.find('selected'));
							console.log(sc.find('available').seatIds);
							console.log(this.settings.label);
							console.log("SC"); console.log(sc);
							console.log(this.settings.id);
							$('<h3>' + ' Seat # ' + this.settings.label + '</h3>')
								.attr('id', 'cart-item-' + this.settings.id)
								.data('seatId', this.settings.id)
								.appendTo($cart);
								

									
							var temp = $(this.settings.label);


							var json = JSON.stringify(temp);
							console.log(json);
							// document.write(json);

							seat_no = json.slice(5, 7);			//SEAT NO FETCHING 
							seat_no = seat_no.replace(",", "");
							console.log(seat_no);
							$("#seatno").val(seat_no);
						
                            //  Boolean(seat_no);

                             if(seat_no !== "")
                             {
                                 console.log("h");
                             }

							$("div.demo-container").text(seat_no); //Printing in DIV TAG


							// parsed_data = JSON.parse(json);
							// console.log(parsed_data);
							
							// $('<h3>' + seat_no + '<b>' + '</b></h3>').appendTo($cart);

							/*
							 * Lets update the counter and total
							 *
							 * .find function will not find the current seat, because it will change its stauts only after return
							 * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
							 */
							 sc.find('available').status('unavailable'); //selected seat ko find karo aur status ko unavailable sset kardo
							 $counter.text(sc.find('selected').length + 1);
							 return 'selected';
							
							
							
							// console.log($counter.text(sc.find('selected').length + 1));
							// $total.text(recalculateTotal(sc)+this.data().price);

							// return 'selected';
							
						} else if (this.status() == 'selected') {
							//update the counter
							$counter.text(sc.find('selected').length - 1);
							//and total
							// $total.text(recalculateTotal(sc)-this.data().price);

							//remove the item from our cart
							$('#cart-item-' + this.settings.id).remove();


							sc.find('unavailable').status('available'); //Saari unavailable seats ko avaiable karo
							sc.get(['1_1', '4_1', '7_1', '7_2']).status('unavailable'); //Jo seats pehele se unavailable thi unhe wapis se unavailable kardo

							//seat has been vacated
                            seat_no = undefined; //   Setting seat as undefined and clearing the seat_no variable so that we can validate again for the next seat
							return 'available';
						} else if (this.status() == 'unavailable') {
							//seat has been already booked
							return 'unavailable';
						} else {
							return this.style();
						}
					}
				});

			//this will handle "[cancel]" link clicks
			$('#selected-seats').on('click', function () {
				//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
                	alert("selected");
				sc.get($(this).parents('li:first').data('seatId')).click();
			});

			//let's pretend some seats have already been booked
			sc.get(['1_1', '4_1', '7_1', '7_2']).status('unavailable');

    // $('#bookseat').on('hover', function () {
	// 			//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
	// 			alert("ready");
	// 		}); 
            


		});



	</script>


</head>

<body>
	<%-- <%@ include file="banner.html"%> --%>
	<!-- Header -->
	<div class="header" role="banner">
	<div class="wrap">
		<!-- Logo -->
		<div class="logo">
			<a href="home.jsp" title="BusKaro"> <img src="images/buskaro_orange.png" style="max-width:25%;margin:1%;"
					alt="BusKaro!" />
			</a>
		</div>
		<!-- //Logo -->
		<br>
		
		<!-- Main Nav -->
			<nav role="navigation" class="main-nav">
				<ul>
					<li class="active" style="list-style:none;" ><a href="home.jsp" title="" style=" text-decoration: none;transition: all 0.2s ease-in;cursor: pointer;border: 0;
    margin:0%;
    box-sizing: border-box;    font-family: 'Montserrat', sans-serif;
    font-weight: 400;vertical-align:middle;">Home</a></li>
					
				</ul>
			</nav>
			<!-- //Main Nav -->
		
	</div>
	</div>
	<!-- //Header -->
	
		

		<!-- Main Nav -->
			<!-- margin-top:100px; -->
<center><b style="padding:10%;font-size: 42px;">SEAT SELECT KARO!</b></center>
		<!-- //Main Nav -->
	
	

	<div class="wrapper">
				
		<div class="container">

			<div id="seat-map">
				<div class="front-indicator">Front</div>
				<!-- <div class="demo-container"></div> -->
				<!-- Printing SEAT NUMBER VALUE -->
			</div>
			<div class="booking-details">
				
				<h3>
					Selected Seats ( <span id="counter">0</span>):
				</h3>
				<ul id="selected-seats">
				</ul>
				<!-- Total: <b>₹<span id="total">0</span></b> -->
				<div id="book"></div>
				<form action="seat.bus" method="post">
					<input type="hidden" name="seatno" id="seatno"> <input
						type="submit" class="btn medium black" value="Confirm Seat" id="bookseat"
						style="background-color:#34394A; cursor:pointer;" onmouseover="check();" 
						/>
                        <script>
                        function check(){
                             console.log(seat_no); //printing seat_no in the console

                            //     alert();
                            if(seat_no == undefined)
                            {
                                alert("SELECT A SEAT"); // alerting the user if no seat is selected

                            }

                        }
                        </script>
						
						
				
				</form>
				<div id="legend"></div>
			</div>
		</div>
	</div>
	
	</body>
	</html>