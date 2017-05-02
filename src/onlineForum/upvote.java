package onlineForum;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.sql.*;
import java.util.HashMap;
/**
 * Servlet implementation class upvote
 */
@WebServlet("/upvote")
public class upvote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upvote() {
        super();
        // TODO Auto-generated constructor stub
    }

    private int doesexist(int val,char t,user u,Connection con){
    	int exists=0;
    	PreparedStatement ps;
		try {
			ps = con.prepareStatement("SELECT * FROM "+t+"VOTES WHERE "+t+"_ID=? AND EMAIL=?");
			ps.setInt(1,val);
	    	ps.setString(2,u.getEmail());
	    	ResultSet rs=ps.executeQuery();
	    	if(rs.next())
	    		{
	    		exists=1;
	    		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return exists;
    }
    
    private int giveupvote(int val,char t,String tab,Connection con){
    	int upvotes=0;
    	PreparedStatement ps;
		try {
			ps = con.prepareStatement("SELECT UPVOTES FROM "+tab+" WHERE "+t+"_ID=?");
			ps.setInt(1,val);
	    	ResultSet rs=ps.executeQuery();
	    	while(rs.next()){
	    		upvotes=rs.getInt("UPVOTES");
	    	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return upvotes;
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String type=request.getParameter("type");
		int val=Integer.parseInt((String)request.getParameter("value"));
		String func=request.getParameter("op");
		user u=(user)request.getSession(false).getAttribute("user");
		Conn c=new Conn();
		Connection con=c.Con();
		int exists=0,up=0;PreparedStatement ps;
		try {
			if(type.equals("answer")){
				exists=doesexist(val,'A',u,con);
				if(func.equals("u")){
					if(exists==0){
						ps=con.prepareStatement("UPDATE ANSWERS SET UPVOTES=UPVOTES+1 WHERE A_ID=?");
						ps.setInt(1, val);
						ps.executeUpdate();
						ps=con.prepareStatement("INSERT INTO AVOTES VALUES (?,?)");
						ps.setString(1, u.getEmail());
						ps.setInt(2, val);
						ps.executeUpdate();
						exists=1;
						up=giveupvote(val,'A',"ANSWERS",con);
					}	
				}
					
			}else{
				exists=doesexist(val,'Q',u,con);
				if(func.equals("u")){
					if(exists==0){
						ps=con.prepareStatement("UPDATE QUESTIONS SET UPVOTES=UPVOTES+1 WHERE Q_ID=?");
						ps.setInt(1, val);
						ps.executeUpdate();
						ps=con.prepareStatement("INSERT INTO QVOTES VALUES (?,?)");
						ps.setString(1, u.getEmail());
						ps.setInt(2, val);
						ps.executeUpdate();
						exists=1;
						up=giveupvote(val,'Q',"QUESTIONS",con);
					}	
						
				}
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
				List<Integer> ls=new ArrayList<>();
				ls.add(exists);
				ls.add(up);
				String json = new Gson().toJson(ls);
				
			    response.setContentType("application/json");
			    response.setCharacterEncoding("UTF-8");
			    response.getWriter().write(json);
		//response.setContentType("text/html");
//		   response.setContentType("application/json");
//		    response.setCharacterEncoding("UTF-8");
		    
//		    List<Integer> ls=new ArrayList<>();
//			ls.add(2);
//			ls.add(4);
//			String json = new Gson().toJson(ls);
//			response.getWriter().write(json);
//		
		
		
	}
	
	
}

