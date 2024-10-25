package model;

public class Gmail {
	private String user;
	private String password;
	public Gmail(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}
	public Gmail() {
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
