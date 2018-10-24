<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="admin_header.jsp" %>
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
		

		
		<center>NOTIFICATIONS PAGE</center>
		<form action="notification_serve" method="post">
		<center>
		<table border="2">
			<tr>
				<td><label for="notifi_title" style="padding:10px">Title</label></td>
				<td><input type="text" name="noti_title" id="noti_title" class="form-control" placeholder="enter a title" style="padding:10px"></td>
			</tr>
			<tr>
				<td><label for="description" style="padding:10px">Describtion</label></td>
				<td><textarea name="notifi_descri" style="padding:10px" placeholder="enter a describtion"></textarea></td>
			</tr>
			<tr>
				<td><label for="description" style="padding:10px">Date</label></td>
				<td><input type="date" name="notifi_calender"></td>
			</tr>
			<tr>
				<td><label for="description" style="padding:10px">Time</label></td>
				<td><input type="time"  name="time" style="padding:10px"></td>
			</tr>
			<tr>
			<td style="padding:10px"><button type="submit" class="btn-primary col-lg-12" name="submit" style="padding-top:20px;">PUBLISH NOTIFICATION</button></td>
			<td style="padding:40px"><button type="cancel" class="btn-primary col-lg-12" name="submit" style="padding-top:20px;">CANCEL</button></td>
			</tr>
			</table>
			</center>
		</form>
			 <br><br><br>
		<!---------------------------------------------------------------------------------------------------------------------------->
		<!---------------------------------------------------------------------------------------------------------------------------->
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

