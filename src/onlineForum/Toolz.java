package onlineForum;

public class Toolz {
	public static String generateUsername(String a){
		String r="";
		int i=(int) Math.round(Math.random()*100000);
		r=a+i;
		String sql="select * from USERS where USERNAME='"+r+"'";
		StmtQuery s=new StmtQuery();
		if(s.isExist(sql)){
			r=generateUsername(a);
		}
		return r;
	}

}
