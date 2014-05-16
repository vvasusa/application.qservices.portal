package com.pearson.dao;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public interface RequestDao {
	
	public abstract void requestList();

	public AdminUser requestList(String id);

	boolean updateDetails(RequestForm requestForm, HttpServletRequest request);



}
