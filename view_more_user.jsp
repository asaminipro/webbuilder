<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="admin_header.jsp" %>
     <%@page import="java.sql.*" %>
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
    width: 25%;
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

<% String id= (String)request.getParameter("val");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from registration where uid='"+id+"'");
%>

<br><br><br><br>
<center><table border="2" >
	<tr>
		<th><b>Name</b></th>
		<th><b>Phno</b></th>
		<th><b>Usertype</b></th>
		<th><b>Insti_Org</b></th>
		<th><b>About</b></th>
		<th><b>Address</b></th>
		<th><b>Pin</b></th>
		<th><b>City</b></th>
		<th><b>State</b></th>
		<th><b>Country</b></th>
		<th><b>Tri_pre</b></th>
	</tr>

		
	<% while(rs.next()) { %>
	
	<tr>
	<td><%= rs.getString(2)%></td>
	<td><%= rs.getString(4)%></td>
    <td><%= rs.getString(5)%></td>
	<td><%= rs.getString(6)%></td>
	<td><%= rs.getString(7)%></td>
	<td><%= rs.getString(8)%></td>
	<td><%= rs.getString(9)%></td>
	<td><%= rs.getString(10)%></td>
	<td><%= rs.getString(11)%></td>
	<td><%= rs.getString(12)%></td>
	<td><%= rs.getString(13)%></td>
	</tr>
	</table></center>
	<br><br><br><br><br><br><br><br><br>
	
	<!--  	<input type="hidden" name="uid" value="<%= rs.getString(1) %>" class="form-control" style="padding:10px">-->
		
	
	
	</center>
		</form>
		 
	<%  } %>	
	
	
<% }
catch(Exception e)
{ 

	System.out.print(e);
	e.printStackTrace();
}
	%>



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

