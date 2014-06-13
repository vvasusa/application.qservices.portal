package com.pearson.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.model.RequestForm;

public interface ActionDao {

	public List<AdminUser> approveRequest(String id,HttpServletRequest request) ;

	public Register newEntryDetails(Register register,
			HttpServletRequest request);

	public Password successNewEntry(Password password,
			HttpServletRequest request);

	public Register newRegistrationDetails(Register register,
			HttpServletRequest request);

	public List<AdminUser> rejectrequest(String id, HttpServletRequest request);

	public List<AdminUser> viewAllRequest(HttpServletRequest request);

}
