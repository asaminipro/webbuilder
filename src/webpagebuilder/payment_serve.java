package webpagebuilder;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class payment_serve
 */
@WebServlet("/payment_serve")
public class payment_serve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment_serve() {
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
		
		String pay_opt = request.getParameter("paytype");
		String card_num = request.getParameter("card_no");
		String exp_month = request.getParameter("expmon");
		String exp_year = request.getParameter("expyear");
		String cvv_num = request.getParameter("cvv");
		System.out.println(pay_opt);

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
			Statement st=conn.createStatement();
			int i = st.executeUpdate("insert into payment_details(payment_type,card_number,expiry_month,expiry_year,cvv_number)values('"+ pay_opt+"','"+card_num+"','"+exp_month+"','"+exp_year+"','"+cvv_num+"')");
			System.out.println(i);
			if(i>0)
			{
				System.out.println("Payment Done Successfully");
				response.sendRedirect("user_home.jsp");
			}
				else
				{
					System.out.println("payment is not done");
				}
				
			
		}
		catch(Exception e)
		{
			System.out.println("error" +e);
		}	
		}
		}


