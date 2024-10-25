package model;

public class Facebook {
	private String user;
	private String password;
	public Facebook(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}
	public Facebook() {
		super();
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Facebook [user=" + user + ", password=" + password + "]";
	}
	
}
