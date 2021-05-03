package com.emp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.pojo.filterresultbean;
import com.emp.repo.emprepo;

@Service
public class filterservice {
	@Autowired
	emprepo o1;
	public List<filterresultbean> getfilterresult(String category,String availability, int price){
		List<filterresultbean> filterdetails = o1.getresult(category,availability,price);
		return filterdetails;
	}
	
	public filterresultbean getPrice(int empid) {
		return o1.findById(empid).get();
	}
}
