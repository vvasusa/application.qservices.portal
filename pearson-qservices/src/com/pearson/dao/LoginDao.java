package com.pearson.dao;

import javax.servlet.http.HttpServletRequest;

public interface LoginDao {
	public abstract boolean getLoginDeatils(String uname,String pass,HttpServletRequest request);

	
}
