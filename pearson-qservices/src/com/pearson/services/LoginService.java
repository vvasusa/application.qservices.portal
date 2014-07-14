package com.pearson.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.pearson.model.ContactUs;

public interface LoginService {

	public boolean loginValidation(String u_name, String p_word,String valid,HttpServletRequest request);
	
	

	public void contactUsDateils(ContactUs contactUs);
	
	


}
