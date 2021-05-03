package com.emp.pojo;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="personal_details")
public class filterresultbean {
	@Id
	private int employeeid; 
	private String lastname;
	private String firstname;
	private int age;
	private String emailid;
	private String address;
	private String availability;
	private String category;
	private int price;
	private double rating;
	private int pastexperience;
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public int getPastexperience() {
		return pastexperience;
	}
	public void setPastexperience(int pastexperience) {
		this.pastexperience = pastexperience;
	}
	public filterresultbean(int employeeid, String lastname, String firstname, int age, String emailid, String address,
			String availability, String category, int price, double rating, int pastexperience) {
		super();
		this.employeeid = employeeid;
		this.lastname = lastname;
		this.firstname = firstname;
		this.age = age;
		this.emailid = emailid;
		this.address = address;
		this.availability = availability;
		this.category = category;
		this.price = price;
		this.rating = rating;
		this.pastexperience = pastexperience;
	}
	public filterresultbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
