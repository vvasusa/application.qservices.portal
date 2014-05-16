package com.pearson.services;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;
import com.pearson.model.Requestor;

public interface RequestService {
	public AdminUser requestList(String id);

	void requestList();

	public boolean updateDetails(RequestForm requestForm,
			HttpServletRequest request);


}
