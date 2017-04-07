package onlineForum;
public class user implements java.io.Serializable {
	private String email;
	private String fname;
	private String lname;
	private String country;
	private String sex;
	
	private String pic;
	private int score;
	private int NOQ;
	private int NOA;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lnane) {
		this.lname = lnane;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getNOQ() {
		return NOQ;
	}
	public void setNOQ(int nOQ) {
		NOQ = nOQ;
	}
	public int getNOA() {
		return NOA;
	}
	public void setNOA(int nOA) {
		NOA = nOA;
	}
	

}
