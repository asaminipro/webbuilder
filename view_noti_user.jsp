<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import="java.*"%> 
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

<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
	</head>
	<body>
<br><br>

		<% 

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from notification order by id desc");
%>
<center>
<table id="customers">
  <tr>
    <th>TITLE</th>
     <th>DETAILS</th>
    <th>DATE</th>
    <th>TIME</th>
  </tr>
		
	<% while(rs.next()) { %>
	
	

		
		<tr>
		<td><%= rs.getString(2)%></td>
		
		<td><%= rs.getString(3)%></td>
			<td><%= rs.getString(4)%></td>
			<td>	<%= rs.getString(5)%></td>
	
		
		
	
		 
	<%  } %>	
		</tr>
	
</table>
	
	
	
	</center>
	</form>
	
<% }
catch(Exception e)
{ 

	System.out.print(e);
	e.printStackTrace();
}
	%>


		<br><br><br><br><br><br><br><br><br><br>
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


</head>
<body style="margin:0;padding:0;">
    
    	
</body>
</html>