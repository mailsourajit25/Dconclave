package onlineForum;

import java.io.IOException;
import java.security.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register_submit
 */
@WebServlet("/register_submit")
public class register_submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register_submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String country=request.getParameter("country");
		String email=request.getParameter("email");
		String pass1=request.getParameter("pass");
		//byte
		String sex=request.getParameter("gender");
		response.setContentType("text/html");
		String sql="INSERT into USERS values('"+email+"','"+fname+"','"+lname+"','"+country+"','"+sex+"','"+pass1+"','','0','0','0')";
		StmtQ s=new StmtQ(sql);
		s.update();
		
		response.sendRedirect("register.jsp?reg_code=340ad75b-388e-4d80-b148-eb48672be293");
	}

}
