package com.pearson.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.LoginDao;

public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;

	@Override
	public boolean loginValidation(String u_name, String p_word,
			HttpServletRequest request) {
		String uname = u_name;
		String pass = p_word;
		boolean value = loginDao.getLoginDeatils(uname, pass, request);
		return value;
	}

	

}
