package com.emp.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registration_details")
public class regbean {
	@Id
	private String emailid;
	private String pass;
	private String mothername;
	private String fathername;
	private String childname;
	private String mobilenumber;
	
	public regbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public regbean(String emailid, String pass, String mothername, String fathername, String childname,
			String mobilenumber) {
		super();
		this.emailid = emailid;
		this.pass = pass;
		this.mothername = mothername;
		this.fathername = fathername;
		this.childname = childname;
		this.mobilenumber = mobilenumber;
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
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getChildname() {
		return childname;
	}
	public void setChildname(String childname) {
		this.childname = childname;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	
}
