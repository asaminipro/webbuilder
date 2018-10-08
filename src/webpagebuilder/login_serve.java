package webpagebuilder;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login_serve
 */
@WebServlet("/login_serve")
public class login_serve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_serve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String	username	=	request.getParameter("uname");
		String	pass	=	request.getParameter("password");
		//System.out.println(username);
		//System.out.println(pass);
		
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		//ResultSet rs = null;
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery("select *  from login where mail='"+username+"' AND password='"+pass+"'");
		
		while(rs.next())
		{
			 int id = rs.getInt(1);
			 String user	=	rs.getString(2);
			 String  utype	=	rs.getString(4);
			 //System.out.println(id);
			// System.out.println(user);
			 //System.out.println(utype);
			 String admin="10";	
			 String usertyp="20";	
			 HttpSession session=request.getSession();  
		        session.setAttribute("id",id);  
			 //LOGIN CODE IS NOT CHECKED..VERIFY IT
			 
			 if(utype.equals(admin))
				{
				 //System.out.println("hello");
				 response.sendRedirect("admin_home.jsp"); 
				 
				}
			 else if(utype.equals(usertyp))
			 {
				 //System.out.println("hello");
				 response.sendRedirect("user_home.jsp"); 
				 
			 }
			 else 
			 {
				 //System.out.println("hello");
				 response.sendRedirect("index.jsp"); 
				 
			 }
			 
			 
			
			
		}
		
		
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
	}

}
