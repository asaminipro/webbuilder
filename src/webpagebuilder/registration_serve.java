package webpagebuilder;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration_serve
 */
@WebServlet("/registration_serve")
public class registration_serve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration_serve() {
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
		
		String	name	=	request.getParameter("name");
		String	pno	=	request.getParameter("pno");
		String	mail	=	request.getParameter("mail");
		String	password	=	request.getParameter("password");
		String	cpassword	=	request.getParameter("cpassword");
	//	System.out.println(name);
		//System.out.println(pno);
		//System.out.println(mail);
		//System.out.println(password);
		//System.out.println(cpassword);
	/*	here have to check three validation 
	 * 1.passowrd matching validation
	 * 2.phone number validation
	 * 3.mail id validtaion
	 * do it in if.. else ... if ..  
	 * if(password==cpassword)
		{
			System.out.println("password mathch");
		}
		else
		{
			System.out.println("password miss match");
		}*/
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection	con	=	DriverManager.getConnection("jdbc:mysql:http://localhost:3306/webpagebuilder","root","");	
			Statement	st	=	con.createStatement();
			int			i	=	st.executeUpdate("insert into");//add inert query to this field
			
		}
		catch(Exception e)
		{
			System.out.println("error in db connection");
		}
	}

}
