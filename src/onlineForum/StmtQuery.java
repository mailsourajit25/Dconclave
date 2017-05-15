package onlineForum;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StmtQuery {

Conn c=new Conn();
Connection con=c.Con();
public ResultSet retriveData(String sql) throws SQLException{
	ResultSet r = null;
	
		Statement s=con.createStatement();
		r=s.executeQuery(sql);
	
	return r;
}

public boolean isExist(String sql) throws SQLException{
	boolean b=false;
	
		Statement s=con.createStatement();
		ResultSet result=s.executeQuery(sql);
		b=result.next();
	
	
	
	
	return b;
	
}

public String getuserdata(String email,String feild) throws SQLException{
	String rtrn="";
	Statement s=con.createStatement();
	String sql="select * from USERS where EMAIL='"+email+"'";
	ResultSet r=s.executeQuery(sql);
	while(r.next()){
	rtrn=r.getString(feild);
	}
	return rtrn;
}
}
