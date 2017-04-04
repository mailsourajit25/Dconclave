package onlineForum;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class StmtQ {
	String sql="";
	Conn c;
	Connection con;
	public StmtQ(String a){
		this.sql=a;
		c=new Conn();
		con=c.Con();
	}
	
	public void update()
	{
	
	try {
		Statement s=con.createStatement();
		int r=s.executeUpdate(sql);
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
		
	
	
	}
	
	public ResultSet retriveData(){
		ResultSet r = null;
		try {
			Statement s=con.createStatement();
			r=s.executeQuery(sql);
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}
		return r;
	}
	
	public boolean isExist(){
		boolean b=false;
		try {
			Statement s=con.createStatement();
			ResultSet result=s.executeQuery(sql);
			b=result.next();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}	
		return b;
	}

}
