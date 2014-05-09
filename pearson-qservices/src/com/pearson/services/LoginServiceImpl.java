package com.pearson.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.LoginDao;

public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;

	@Override
	public boolean loginValidation(String u_name, String p_word) {
		String uname = u_name;
		String pass = p_word;
		boolean value = loginDao.getLoginDeatils(uname, pass);
		return value;
	}

}
