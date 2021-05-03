package com.emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.pojo.loginbean;
import com.emp.repo.regdetailrepo;

@Service
public class loginservice {
	@Autowired 
	regdetailrepo rdr;
	
	public boolean verifyInput(loginbean lb) {
		if(rdr.existsById(lb.getEmailid())) {
			if(rdr.findById(lb.getEmailid()).get().getPass().equals(lb.getPass())){
				return true;
			}
		}
		return false;
	}
	
}
