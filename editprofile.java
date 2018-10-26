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
 * Servlet implementation class editprofile
 */
@WebServlet("/editprofile")
public class editprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		String ses = (String) request.getAttribute("id");
		System.out.println(ses);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String	uid	=	request.getParameter("uid");
		String	utype	=	request.getParameter("utype");
		String	insorg	=	request.getParameter("insorg");
		String	about	=	request.getParameter("about");
		String	pin		=	request.getParameter("pin");
		String	addrs	=	request.getParameter("addrs");
		String	city	=	request.getParameter("city");
		String	state	=	request.getParameter("state");
		String	country	=	request.getParameter("country");
		String	tripre	=	request.getParameter("tripre");
		//System.out.println(uid);
		//System.out.println(utype);
	//	System.out.println(insorg);
	//	System.out.println(about);
	//	System.out.println(pin);
	//	System.out.println(addrs);
	//	System.out.println(city);
	//	System.out.println(state);
		//System.out.println(country);
	//	System.out.println(tripre);
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		//ResultSet rs = null;
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
		Statement st=conn.createStatement();
		String sql = "UPDATE registration SET user_type='"+utype+"',insti_org='"+insorg+"',about='"+about+"',address='"+addrs+"',pin='"+city+"',state='"+state+"',country='"+country+"',tri_pre_user='"+tripre+"' where id='"+uid+"' ";
        st.executeUpdate(sql);
        response.sendRedirect("edit_profile.jsp"); 
		
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}

	}
}
