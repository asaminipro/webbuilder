<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String nid = (String)request.getParameter("value"); 

	try
		{
		Class.forName("com.mysql.jdbc.Driver");
		//ResultSet rs = null;
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
		Statement st=conn.createStatement();
		int i = st.executeUpdate("DELETE FROM notification WHERE id = '"+nid+"'");
		
		}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

	%>
	
		
			
						
		
		
	
</body>
</html>