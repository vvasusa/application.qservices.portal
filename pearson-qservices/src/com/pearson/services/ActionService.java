package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.Register;

public interface ActionService {

	public   List<AdminUser> approveRequest(String id,HttpServletRequest request);

	

	public Register userEntryDetails(Register register,
			HttpServletRequest request);

	
}
