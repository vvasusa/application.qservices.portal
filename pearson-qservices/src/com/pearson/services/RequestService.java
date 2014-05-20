package com.pearson.services;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public interface RequestService {
	
	void requestList();
	public AdminUser requestList(String id);
	public RequestForm updateDetails(RequestForm requestForm,
			HttpServletRequest request);
	String approveRequest(String id);

}
