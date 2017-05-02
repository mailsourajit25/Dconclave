package onlineForum;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class anssubmit
 */
@WebServlet("/anssubmit")
public class anssubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public anssubmit() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ans=request.getParameter("ans");
		int qid=Integer.parseInt((String)request.getParameter("qid"));
		Conn c=new Conn();
		Connection con=c.Con();
		user u=(user)request.getSession(false).getAttribute("user");
		try {
			PreparedStatement s=con.prepareStatement("INSERT INTO ANSWERS VALUES (AUTOINCRE.NEXTVAL,?,?,?,?,?)");
			s.setString(1,u.getEmail());
			s.setInt(2,qid);
			s.setString(3, ans);
			s.setDate(4, getCurrentDate());
			s.setInt(5,0);
			s.executeQuery();
			//Update user values
			String Sql="UPDATE USERS SET NO_OF_A=NO_OF_Q + 1,SCORE=SCORE + 50 WHERE EMAIL=?";
			s=con.prepareStatement(Sql);
			s.setString(1, u.getEmail());
			s.executeUpdate();
			u.setNOA(u.getNOA()+1);
			u.setScore(u.getScore()+50);
			response.sendRedirect("viewQuestion.jsp?q="+qid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
