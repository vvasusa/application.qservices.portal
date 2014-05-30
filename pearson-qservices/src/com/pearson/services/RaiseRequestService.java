package com.pearson.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;
import com.pearson.model.RequestForm;

public interface RaiseRequestService  {

	List<AdminUser> newRequestService(String id, RaiseRequest raiseRequest, HttpServletRequest request);

	List<AdminUser> newRequestServiceFinal(String id, RequestForm requestForm, HttpServletRequest request);

}
