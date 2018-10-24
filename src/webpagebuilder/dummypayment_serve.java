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
 * Servlet implementation class dummypayment_serve
 */
@WebServlet("/dummypayment_serve")
public class dummypayment_serve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dummypayment_serve() {
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
		String cardtype = request.getParameter("card_type");
		String cardholder = request.getParameter("card_holder");
		String card_num = request.getParameter("card_no");
		String acc_no = request.getParameter("account_no");
		String cvv_no = request.getParameter("cvv_number");
		String exp_mnth = request.getParameter("exp_month");
		String expyear = request.getParameter("exp_year");
		String phone_no = request.getParameter("phone_number");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webpagebuilder", "root", "");
			Statement st=conn.createStatement();
			int i = st.executeUpdate("insert into customer_details(card_type,card_holder,card_number,account_number,cvv_number,expiry_month,expiry_year,phone_number)values('"+cardtype +"','"+cardholder+"','"+card_num+"','"+acc_no+"','"+cvv_no+"','"+exp_mnth+"','"+expyear+"','"+phone_no+"')");
		System.out.println("cardtype");
		}
		
		catch(Exception e)
		{
			System.out.println("error" +e);
		}	
		
		
		
	}

}
