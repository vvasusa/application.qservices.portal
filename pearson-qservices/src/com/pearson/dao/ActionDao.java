package com.pearson.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;

public interface ActionDao {

	public List<AdminUser> approveRequest(String id,HttpServletRequest request) ;

	public Register newEntryDetails(Register register,
			HttpServletRequest request);

	public Password successNewEntry(Password password,
			HttpServletRequest request);

}
