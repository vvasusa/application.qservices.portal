package com.pearson.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.LoginDao;
import com.pearson.model.ContactUs;

public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;

	@Override
	public boolean loginValidation(String u_name, String p_word,String valid,
			HttpServletRequest request) {
		String uname = u_name;
		String pass = p_word;
		boolean value = loginDao.getLoginDeatils(uname, pass,valid, request);
		return value;
	}

	

	@Override
	public void contactUsDateils(ContactUs contactUs) {
		// TODO Auto-generated method stub
		 loginDao.contactUsDetails(contactUs);
		 return;
		
	}

	

}
