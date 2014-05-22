package com.pearson.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public interface RequestDao {
	
	public abstract void requestList();

	//public AdminUser requestList(String id);

	RequestForm updateDetails(RequestForm requestForm, HttpServletRequest request);

//	public abstract ModelMap acceptAndReject();

	public String  approveRequest(String id);

	List<AdminUser> requestList(String id, HttpServletRequest request);



}
