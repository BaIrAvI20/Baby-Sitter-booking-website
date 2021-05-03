package com.emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.pojo.regbean;
import com.emp.repo.regdetailrepo;

@Service
public class regservice {
	
	@Autowired
	regdetailrepo reg;
	
	public void newuser(regbean rb){
		reg.save(rb);
	}
}
