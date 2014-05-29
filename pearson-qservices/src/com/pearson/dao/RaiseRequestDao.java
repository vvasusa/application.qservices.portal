package com.pearson.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;

public interface RaiseRequestDao {

	List<AdminUser> newRequestService(String id,RaiseRequest raiseRequest, HttpServletRequest request);

}
