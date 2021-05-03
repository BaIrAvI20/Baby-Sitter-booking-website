package com.emp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.pojo.reportbean;
import com.emp.repo.reportrepo;

@Service
public class reportservice {
	@Autowired
	reportrepo rr;
	
	public List<reportbean> display (int id) {
		List<reportbean> rb = rr.getreport(id);
		return rb;
	}

}
