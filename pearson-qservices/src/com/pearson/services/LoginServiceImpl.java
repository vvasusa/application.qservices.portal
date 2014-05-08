package com.pearson.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.LoginDao;

public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;

	@Override
	public boolean loginValidation() {
		boolean value;
		value = loginDao.getLoginDeatils();
		return value;
	}

}
