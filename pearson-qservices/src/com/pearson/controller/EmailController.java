package com.pearson.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pearson.services.JavaMailService;
import com.pearson.services.RequestService;

@Controller
@SessionAttributes
@RequestMapping("/")
public class EmailController {

	@Autowired
	JavaMailService javaMailService;
	
	@Autowired
	RequestService requestService;

	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public String Getdetails() {
		// String msg = "mail sent";
		javaMailService.sendEmail();
		return "error";
	}

	/*@RequestMapping(value = "/requestList", method = RequestMethod.GET)
	public String requestList(HttpServletRequest request) {
		// String msg = "mail sent";
		HttpSession session = request.getSession();
		String s= session.getId();
		session.setAttribute("value", s);
		System.out.println(s);
		
		requestService. requestList();
		return "requestList";
	}*/

}
