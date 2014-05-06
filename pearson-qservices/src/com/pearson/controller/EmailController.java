package com.pearson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes
@RequestMapping("/")
public class EmailController {
	
	@Autowired
	JavaMailService javaMailService;
	
	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public String Getdetails() {
		String msg = "mail sent";
		javaMailService.sendEmail();
		return msg;
	}

}
