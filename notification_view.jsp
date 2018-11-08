<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<form method="post">

<table border="2">
<tr>
<td>ID</td>
<td>NAME</td>
<td>SKILL</td>
<td>ACTION</td>
</tr>
	<%
	

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
	//ResultSet rs = null;
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery("select *  from notification");
		while(rs.next())
		{

	%>
    <tr><td><% rs.getInt(1); %></td>
    <td><%rs.getString(2); %></td>
   <td><%rs.getString(3); %></td></tr>
        <%
		}
		
		 
   		 }
catch(Exception e)
{
    e.printStackTrace();
    
    }
%>
</table>
</html>