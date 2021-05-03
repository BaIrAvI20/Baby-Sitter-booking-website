package com.emp.pojo;

public class loginbean {
	private String emailid;
	private String pass;
	
	public loginbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public loginbean(String emailid, String pass) {
		super();
		this.emailid = emailid;
		this.pass = pass;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
