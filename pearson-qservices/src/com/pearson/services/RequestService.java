package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public interface RequestService {
	
	void requestList();
	public List<AdminUser> requestList(String id,HttpServletRequest request);
	public RequestForm updateDetails(RequestForm requestForm,
			HttpServletRequest request);
	String approveRequest(String id);

}
