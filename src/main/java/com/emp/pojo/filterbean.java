package com.emp.pojo;

public class filterbean {
	private String category;
	private String availability;
	private int price;
	
	public filterbean() {
		super();
	}

	public filterbean(String category, String availability, int price) {
		super();
		this.category = category;
		this.availability=availability;
		this.price = price;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
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
}
