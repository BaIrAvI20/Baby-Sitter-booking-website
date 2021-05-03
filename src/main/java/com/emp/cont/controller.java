package com.emp.cont;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.emp.pojo.filterbean;
import com.emp.pojo.filterresultbean;
import com.emp.pojo.loginbean;
import com.emp.pojo.regbean;
import com.emp.pojo.reportbean;
import com.emp.service.filterservice;
import com.emp.service.loginservice;
import com.emp.service.regservice;
import com.emp.service.reportservice;

@SessionAttributes("pri")
@Controller
public class controller {
	@Autowired
	filterservice search;
	@Autowired
	regservice regs;
	@Autowired 
	loginservice logs;
	@Autowired
	reportservice reps;
	
	@GetMapping("/openPage")
	public String openPage() {
		return "openPage";
	}
	
	@GetMapping("/registration")
	public String registration(@ModelAttribute("registration") regbean r) {
		System.out.println(r.getMobilenumber());
		return "registration";
	}
 
	@PostMapping("/afterreg")
	public String postregistration(@ModelAttribute("registration") regbean r) {
		System.out.println(r.getMobilenumber());
		regs.newuser(r);		
		return "redirect:login";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("login") loginbean lb) {
		return "login";
	}
 
	@PostMapping("/afterlogin")
	public String postlogin(@ModelAttribute("login") loginbean lb, Errors err, Model m) {
		if(err.hasErrors()) {
			System.out.println("hasErrors");
			return "login";
		}
		else if(logs.verifyInput(lb))
		{
			System.out.println("redirect");
			return "redirect:filter";
		}
		else {
			m.addAttribute("Error", 1);
				return "login";
			}
	}
	
	@GetMapping("/filter")
	public String filter(@ModelAttribute("filter") filterbean s) {
		return "filter";
	}
 
	@PostMapping("/afterfilter")
	public String afterfilter(@ModelAttribute("filter") filterbean s, Model m1) {
		List<filterresultbean> f = search.getfilterresult(s.getCategory(),s.getAvailability(),s.getPrice());
		m1.addAttribute("infos", f);
		return "filterresult";
	}
	
	@ModelAttribute("prices")
	public List<Integer> getPrices(){
	List<Integer> prices = new ArrayList<Integer>(); 
		prices.add(500);
		prices.add(1000);
		prices.add(1500);
		prices.add(2000);
		prices.add(2500);
		return prices;
	}
	
	@ModelAttribute("cate")
	public List<String> getCate(){
	List<String> cate = new ArrayList<String>(); 
	cate.add("THE NEWBEE");
	cate.add("COOL SIBLING");
	cate.add("THE COUCH POTATO");
	cate.add("THE MARY POPPINS");
	return cate;
	}
	
	@ModelAttribute("avai")
	public List<String> getAvai(){
	List<String> avai = new ArrayList<String>(); 

		avai.add("Fixed Babysitter");
		avai.add("After school Babysitter");
		avai.add("Flexible Babysitter");
		avai.add("Last-minute Babysitter");
		return avai;
	}
	
	@GetMapping("/report")
	public String report(@RequestParam("id") int reportid ,Model model) {
		List<reportbean> rb=reps.display(reportid);
		filterresultbean pri = search.getPrice(reportid);
		model.addAttribute("pri",pri);
		model.addAttribute("ack",rb);
		return "report";
	}
	
	@GetMapping("/bookandpay")
	public String bookandpay() {
		return "bookandpay";
	}
	
	@RequestMapping("/success")
	public String success() {
		return "success";
	}	
	
	@RequestMapping("/logoutsuccess")
	public String logoutsuccess() {
		return "logoutsuccess";
	}
}