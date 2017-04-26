package onlineForum;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginsubmit
 */
@WebServlet(description = "Contains script for dealing with login", urlPatterns = { "/loginsubmit" })
public class loginsubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginsubmit() {
        super();
        
    }

	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=(String)request.getParameter("email");
		String pass=(String)request.getParameter("pass");
		String query="Select * from USERS where EMAIL='"+email+"' AND PASWD='"+pass+"'";
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Conn c=new Conn();
		Connection con=c.Con();
		ResultSet r;//For data retrieval type queries we directly need to include the connection variable into
		// the place from where data is to be fetched to.
		try {
			Statement s=con.createStatement();
			r = s.executeQuery(query);
			if(!r.next()){//if no record is returned by the sql query then the value of r.next() is false
				response.sendRedirect("login.jsp?pstatus=404");
			}else{
				user u=new user();
				
					
					u.setEmail(r.getString(1));
					u.setCountry(r.getString("COUNTRY"));
					u.setFname(r.getString("FNAME"));
					u.setLname(r.getString("LNAME"));
					u.setScore(r.getInt("SCORE"));
					u.setSex(r.getString("SEX"));
					u.setNOA(r.getInt("NO_OF_A"));
					u.setNOQ(r.getInt("NO_OF_Q"));
					u.setPic(r.getString("PIC"));
					
				
				HttpSession session=request.getSession(true);
				session.setAttribute("user", u);
				response.sendRedirect("profile.jsp");
			}
			    	
			
		} catch (SQLException e1) {
			e1.printStackTrace();
			out.println("Error"+e1.getMessage());
		}
	}

}
