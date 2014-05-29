package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;

public interface RaiseRequestService  {

	List<AdminUser> newRequestService(String id, RaiseRequest raiseRequest, HttpServletRequest request);

}
