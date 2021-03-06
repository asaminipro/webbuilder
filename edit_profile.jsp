<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="user_header.jsp" %>
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

	</head>
	<body>

<% String id= (String) session.getAttribute("value"); 

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select id,name,phonenumber from registration where uid='"+id+"'");
%>
<center>EDIT PROFILE</center>
		<form action="editprofile" method="post">
		<center><table border="2"  >
		
	<% while(rs.next()) { %>
	
	
	<tr>
		<td><label for="name" style="padding:10px">NAME</label></td>
		<td><%= rs.getString(2)%></td>
	</tr>
	<tr>
	<td><label for="arya" style="padding:10px">PHONE NUMBER</label></td>
	<td><%= rs.getString(3)%></td></tr>
	
		<input type="hidden" name="uid" value="<%= rs.getString(1) %>" class="form-control" style="padding:10px">
		
	
	
	<tr>
	<td><label for="name" style="padding:10px">Usertype:</label></td>
			<td><input  type="radio" name="utype" value="student" >student
			<input type="radio" name="utype" value="employee" checked>employee</td>
		</tr>
	
	<tr><td><label for="name" style="padding:10px">Institution/Organisation:</label></td>
			<td><input type="text" name="insorg" class="form-control" style="padding:10px"></td>
	</tr>
		<tr>
			<td><label for="name" style="padding:10px">About you:</label></td>
			<td><textarea name="about" placeholder="write about you" class="form-control" style="padding:10px"></textarea></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">Address:</label></td>
			<td><input type="text" name="addrs" class="form-control" style="padding:10px"></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">PIN:</label></td>
			<td><input type="text" name="pin" class="form-control" style="padding:10px"></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">City:</label></td>
			<td><input type="text" name="city" class="form-control" style="padding:10px"></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">State:</label></td>
			<td><input type="text" name="state" class="form-control" style="padding:10px"></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">Country:</label></td>
			<td><input type="text" name="country" class="form-control" style="padding:10px"></td>
		</tr>
		<tr>
			<td><label for="name" style="padding:10px">Trial/Premium user:</label></td>
			<td><input  type="radio" name="tripre" value="trial">TRIAL
			<input type="radio" name="tripre" value="premium" checked>PREMIUM</td>
		</tr>
		<tr>
			<td><button type="submit" class="btn btn-danger" name="submit" values="submit">SUBMIT</button></td>
			
			<td><button type="reset" class="btn btn-danger" name="cancel" values="cancel" >CANCEL</button></td>
		</tr>
	</table>
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

