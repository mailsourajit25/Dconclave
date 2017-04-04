package onlineForum;

import java.sql.*;
import java.sql.DriverManager;

public class Conn {
	private Connection c;
	public Connection Con(String username,String pass){
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",username,pass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}
		return c;
	}
	
	
}
