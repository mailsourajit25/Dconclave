package onlineForum;

import java.sql.*;
import java.sql.DriverManager;

public class Conn {
	private Connection c;
	public Connection Con(){
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","forum", "1234");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.toString());
		}
		return c;
	}
	
	
}
