package com.pearson.dao;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.ContactUs;

public interface LoginDao {
	public abstract boolean getLoginDeatils(String uname,String pass,HttpServletRequest request);

	public abstract void contactUsDetails(ContactUs contactUs);

	
}
