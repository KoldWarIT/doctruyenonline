package model;

import java.sql.Date;

public class Account {
	private String user;
	private String password;
	private String name;
	private String gender;
	private Date birthDate;
	private String address;
	private String phoneNum;
	private String email;
	public Account(String user, String password, String name, String gender, Date birthDate, String address,
			String phoneNum, String email) {
		super();
		this.user = user;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birthDate = birthDate;
		this.address = address;
		this.phoneNum = phoneNum;
		this.email = email;
	}
	public Account() {
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Account [user=" + user + ", password=" + password + ", name=" + name + ", gender=" + gender
				+ ", birthDate=" + birthDate + ", address=" + address + ", phoneNum=" + phoneNum + ", email=" + email
				+ "]";
	}
	
}
