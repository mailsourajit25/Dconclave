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
	Connection con=c.Con("forum", "1234");
	public int update()
	{
		int r=0;
	try {
		Statement s=con.createStatement();
		r=s.executeUpdate(sql);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return r;
	}

}
