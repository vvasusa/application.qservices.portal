package com.pearson.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.dao.ActionDao;


public class ActionServiceImpl implements ActionService {
	@Autowired
	ActionDao actionDao;

	@Override
	public void approveRequest(String id) {
		// TODO Auto-generated method stub
		actionDao.approveRequest(id);
	}
	
	


}
