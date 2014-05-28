package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.ActionDao;
import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;

public class ActionServiceImpl implements ActionService {
	@Autowired
	ActionDao actionDao;

	@Override
	public List<AdminUser> approveRequest(String requestId,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.approveRequest(requestId, request);
	}

	@Override
	public Register userEntryDetails(Register register,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.newEntryDetails(register,request);
	}

	@Override
	public Password successNewEntry(Password password,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.successNewEntry(password, request);
	}

}
