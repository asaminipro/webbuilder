<%@include file="user_header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WEBPAGE BUILDER</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>	
	<form action="payment_serve" method="POST">	
		<center>
		<div class="row form-group">
		<table border="2">	
		<tr><th colspan="2"><center>PLEASE FILL YOUR PAYMENT DETAILS</center></th> </tr>	
						<tr> <th rowspan="2">PAYMENT OPTION</th></tr>
						<tr>
							<td colspan="2">	
							 <div class="col-md-12">
										<input type="radio" name="paytype" value="credit"><label for="credit">CREDIT CARD</label><br>	
										<input type="radio" name="paytype" value="debit"><label for="debit">DEBIT CARD</label><br>
										<input type="radio" name="paytype" value="netbanking"><label for="banking">NET BANKING</label>
										</div>
							</td>
							</tr>
						<tr>
						<td>
							<div class="col-md-6">
								<label for="card_no">CARD NUMBER</label></div></td>
								<td><input type="text" name="card_no" id="card_no" class="form-control col -1"></td>
							
						</tr>
						<tr>
				<td>
						<div class="col-md-6">
						<label for="expmnth">EXPIRY MONTH</label></div></td>
						<td><select name="expmon" class="form-control">
						<option value="jan">january</option>
						<option value="feb">february</option>
						<option value="mar">march</option>
						<option value="april">april</option>
						<option value="may">may</option>
						<option value="jun">june</option>
						<option value="jul">july</option>
						<option value="aug">august</option>
						<option value="sep">september</option>
						<option value="oct">october</option>
						<option value="nov">november</option>
						<option value="dec">december</option>
						<option selected value="default"> CHOOSE A MONTH</option>
						</select>	
						</td>		</tr>
						
						
					<tr>
					<td>
					<div class="col-md-6">
					<label for="expyear">EXPIRY YEAR</label></div></td>
					<td><select name="expyear" class="form-control">
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
						<option value="2021">2021</option>
						<option value="2022">2022</option>
						<option value="2023">2023</option>
						<option value="2024">2024</option>
						<option value="2025">2025</option>
						<option value="2026">2026</option>
						<option value="2027">2027</option>
						<option value="2028">2028</option>
						<option selected value="default">CHOOSE A YEAR</option>
						</select>
						</td>
						
						</tr>
						<tr>
						<td>
						<div class="col-md-6">
							<label for="cvv">CVV</label></div>
						</td>
					<td><input type="text" class="form-control" name="cvv"></td>
						
						</tr>
						<tr>
						<td colspan="2">
						<div class="col-md-12"></div><center>
						<button type="submit" class="btn-primary" name="submit">PAYMENT</button></center> </td>
						
						</tr>
							
							
								</table>	</div>	</center>
	</form>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <%@include file="footer.jsp" %>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	</body>
</html>

