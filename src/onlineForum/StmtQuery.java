package onlineForum;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StmtQuery {

Conn c=new Conn();
Connection con=c.Con("forum", "1234");
public ResultSet retriveData(String sql){
	ResultSet r = null;
	try {
		Statement s=con.createStatement();
		r=s.executeQuery(sql);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println(e.toString());
	}
	return r;
}

public boolean isExist(String sql){
	boolean b=false;
	try {
		Statement s=con.createStatement();
		ResultSet result=s.executeQuery(sql);
		b=result.next();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println(e.toString());
	}	
	return b;
}
}
