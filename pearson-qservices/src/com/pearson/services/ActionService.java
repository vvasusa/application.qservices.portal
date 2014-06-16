package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.model.RequestForm;
import com.pearson.model.ServiceIntro;

public interface ActionService {

	public   List<AdminUser> approveRequest(String id,HttpServletRequest request);

	

	public Register userEntryDetails(Register register,
			HttpServletRequest request);



	public Password successNewEntry(Password password,
			HttpServletRequest request);



	public Register newRegistrationDetails(Register register,
			HttpServletRequest request);



	public List<AdminUser> rejectrequest(String id, HttpServletRequest request);



	public List<AdminUser> viewAllRequest(HttpServletRequest request);



	public ServiceIntro getAllServiceIntro();

	
}
