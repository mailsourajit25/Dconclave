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
		StmtQ q=new StmtQ(query);
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Conn c=new Conn();
		Connection con=c.Con();
		ResultSet r;
		try {
			Statement s=con.createStatement();
			r = s.executeQuery(query);
			while (r.next()) {
			    if(r.getRow()==0){
			    	out.print("Hellow");
			    	response.sendRedirect("login.jsp?pstatus=404");
			    }else{
			    	response.sendRedirect("profile.jsp");
			    }
			    	
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
			out.println("Error"+e1.getMessage());
		}
	}

}
