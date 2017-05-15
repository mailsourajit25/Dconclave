package onlineForum;
import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;
public class StmtUpdate {
	String sql="";
	public StmtUpdate(String a){
		this.sql=a;
	}
	Conn c=new Conn();
	Connection con=c.Con();
	public int update() throws SQLException
	{
		int r=0;
	
		Statement s=con.createStatement();
		r=s.executeUpdate(sql);
	
		
	return r;
	}

}
