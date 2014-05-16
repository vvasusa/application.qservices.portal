package com.pearson.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.RequestDao;
import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public class RequestServiceImpl implements RequestService {

	@Autowired
	RequestDao requestDao;

	/*
	 * @Override public void requestList() { // TODO Auto-generated method stub
	 * requestDao.requestList(); }
	 */

	@Override
	public AdminUser requestList(String id) {
		return requestDao.requestList(id);
	}

	@Override
	public void requestList() {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean updateDetails(RequestForm requestForm,HttpServletRequest request) {
		// TODO Auto-generated method stub
		requestDao.updateDetails(requestForm,request);
		return true;
	}

}
