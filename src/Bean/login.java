package Bean;
public class login {
private	String userName;
private	String pass;
private	String fullname;
private	int isAdmin;
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserName() {
		return userName;
	}
	public String getPass() {
		return pass;
	}
	public String getFullname() {
		return fullname;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public login() {
		// TODO Auto-generated constructor stub
	}
	public login( String username , String pass , String fullname , int isAdmin ) {
		this.userName = username;
		this.pass = pass;
		this.fullname = fullname;
		this.isAdmin = isAdmin;
		// TODO Auto-generated constructor stub
	}
	
	public login( String username , String pass , String fullname ) {
		this.userName = username;
		this.pass = pass;
		this.fullname = fullname;
	// TODO Auto-generated constructor stub
	}
	

}
