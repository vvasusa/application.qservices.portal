package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import com.pearson.dao.ActionDao;
import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.model.RequestForm;
import com.pearson.model.ServiceIntro;

public class ActionServiceImpl implements ActionService {
	@Autowired
	ActionDao actionDao;

	@Override
	public List<AdminUser> approveRequest(String requestId,
			HttpServletRequest request,RequestForm requestForm) {
		// TODO Auto-generated method stub
		return actionDao.approveRequest(requestId, request,requestForm);
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

	@Override
	public Register newRegistrationDetails(Register register,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.newRegistrationDetails(register,request);
	}

	@Override
	public List<AdminUser> rejectrequest(String id, HttpServletRequest request,RequestForm requestForm) {
		// TODO Auto-generated method stub
		return actionDao.rejectrequest(id,request,requestForm);
	}

	@Override
	public List<AdminUser> viewAllRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.viewAllRequest(request);
	}

	@Override
	public ServiceIntro getAllServiceIntro() {
		// TODO Auto-generated method stub
		return actionDao.getAllServiceIntro();
	}

	@Override
	public List<AdminUser> MyapproveRequest(String requestId,
			HttpServletRequest request, RequestForm requestForm) {
		// TODO Auto-generated method stub
		return actionDao.MyApproveRequest(requestId, request,requestForm);
	}

	@Override
	public List<AdminUser> MyRejectrequest(String id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return actionDao.myRejectrequest(id,request);
	}

}
