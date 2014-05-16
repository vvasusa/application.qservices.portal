package com.pearson.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface LoginService {

	public boolean loginValidation(String u_name, String p_word,HttpServletRequest request);


}
