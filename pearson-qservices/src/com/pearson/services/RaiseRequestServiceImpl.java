package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.LoginDao;
import com.pearson.dao.RaiseRequestDao;
import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;


public class RaiseRequestServiceImpl implements RaiseRequestService {
	@Autowired
	RaiseRequestDao raiseRequestDao;
	@Override
	public List<AdminUser> newRequestService(String id,RaiseRequest raiseRequest, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return raiseRequestDao.newRequestService(id, raiseRequest,request);
	}

}
