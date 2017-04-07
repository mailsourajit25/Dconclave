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
	
	public int update() throws SQLException
	{
	int r=0;
	
		Statement s=con.createStatement();
		r=s.executeUpdate(sql);
		con.close();
	
		
	return r;
	
	}
	
	public ResultSet retriveData() throws SQLException{
		ResultSet r = null;
		
			Statement s=con.createStatement();
			r=s.executeQuery(sql);
			con.close();
		
		return r;
	}
	
	public boolean isExist() throws SQLException{
		boolean b=false;
		
			Statement s=con.createStatement();
			ResultSet result=s.executeQuery(sql);
			b=result.next();
			con.close();
			
		return b;
	}

}
