package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public List<AdminUser> requestList(String id,HttpServletRequest request) {
		return requestDao.requestList(id,request);
	}

	@Override
	public void requestList() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AdminUser> updateDetails(RequestForm requestForm,HttpServletRequest request) {
		// TODO Auto-generated method stub
		return requestDao.updateDetails(requestForm,request);
		 
	}
	@Override
	public String approveRequest(String id) {
		return requestDao.approveRequest(id);
	}


}
