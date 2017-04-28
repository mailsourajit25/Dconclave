package onlineForum;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/ask_question")
public class ask_question extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ask_question() {
        super();

    }
    
    public static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("t");
		String tag=request.getParameter("topic");
		String desc=request.getParameter("desc");
		
		user u=(user)request.getSession(false).getAttribute("user");
		String email=u.getEmail();
		PrintWriter out=response.getWriter();
		int autoid=0;
		try{
			String Sql="INSERT INTO QUESTIONS VALUES(AUTOINCRE.NEXTVAL,?,?,?,?,?,?,?)";
			Conn c=new Conn();
			Connection con=c.Con();
			PreparedStatement s,s1;
			s=con.prepareStatement(Sql);
			s.setString(1,email);
			s.setString(2, title);
			s.setString(3, desc);
			s.setInt(4, 0);
			s.setDate(5,getCurrentDate());
			s.setInt(6, 0);
			s.setString(7, tag);
			
			s.executeUpdate();
			
			
			//Incrementing the value of user no. of questions
			u.setNOQ(u.getNOQ()+1);
			u.setScore(u.getScore()+1);
			out.println("success");
			Sql="UPDATE USERS SET NO_OF_Q=NO_OF_Q + 1,SCORE=SCORE + 10 WHERE EMAIL=?";
			s1=con.prepareStatement(Sql);
			s1.setString(1, email);
			s1.executeUpdate();
			//retrieve the auto generated id
			Sql="SELECT MAX(Q_ID) FROM QUESTIONS WHERE EMAIL=?";
			s1=con.prepareStatement(Sql);
			s1.setString(1, email);
			ResultSet r=s1.executeQuery();
			while(r.next()){
				autoid=r.getInt(1);
			}
			response.sendRedirect("viewQuestion.jsp?q="+autoid);
		}catch(SQLException e){
			e.printStackTrace();
			out.println("Error "+e.getMessage());
			
		}
		
	}

}
