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
	
<<<<<<< HEAD
	public int update() throws SQLException
	{
	int r=0;
	
=======
	public void update()//For insert ,update and delete sql instructions 
	{
	int r=0;
	try {
>>>>>>> origin/master
		Statement s=con.createStatement();
		r=s.executeUpdate(sql);
		con.close();
	
		
	return r;
	
	}
	
<<<<<<< HEAD
	public ResultSet retriveData() throws SQLException{
=======
	public ResultSet retrieveData(){
>>>>>>> origin/master
		ResultSet r = null;
		
			Statement s=con.createStatement();
			r=s.executeQuery(sql);
<<<<<<< HEAD
			con.close();
=======
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
>>>>>>> origin/master
		
		return r;
	}
	
	public boolean isExist() throws SQLException{
		boolean b=false;
		
			Statement s=con.createStatement();
			ResultSet result=s.executeQuery(sql);
			b=result.next();
			con.close();
<<<<<<< HEAD
			
=======
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}	
>>>>>>> origin/master
		return b;
	}

}
