package onlineForum;

import java.io.IOException;
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
		
		String sex=request.getParameter("gender");
		
		String sql="insert into USERS values('"+email+"','"+fname+"','"+lname+"','"+country+"','"+sex+"','"+pass1+"','','0','0','0')";
		//out.print(sql);
		StmtUpdate s=new StmtUpdate(sql);
	}

}
