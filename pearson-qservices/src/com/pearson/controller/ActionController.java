package com.pearson.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;
import com.pearson.services.ActionService;
import com.pearson.services.JavaMailServiceImpl;

@Controller
@SessionAttributes
@RequestMapping("/")
public class ActionController {
	@Autowired
	ActionService actionService;
	
	/*@Autowired
	private RegistrationValidation registrationValidation;

	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(registrationValidation);
	}*/


	@RequestMapping(value = "/approve", method = RequestMethod.POST)
	
	public ModelAndView approveRequest(@ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		System.out.println("APPROVED ID *************"+requestForm.getApproveID());
		System.out.println("APPROVED ID *************"+requestForm.getRejectID());
		String requestId = requestForm.getApproveID();
		System.out.println(requestForm.getCommands());
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser= actionService.approveRequest(requestId,request,requestForm);
		//model.addAttribute("welcome");
		return new ModelAndView("approve", "adminUser", adminUser);
	}
	
	
	@RequestMapping(value = "/reject", method = RequestMethod.POST)
	public ModelAndView reject( @ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		String id=requestForm.getRejectID();
		adminUser= actionService.rejectrequest(id,request);
    	
    	//return new ModelAndView("requestList", "adminUser", adminUser);
    	return new ModelAndView("rejectedList", "adminUser", adminUser);
	}
	
	
	@RequestMapping(value = "/viewAllRequest", method = RequestMethod.GET)
	public ModelAndView viewAllRequest(RequestForm requestForm, HttpServletRequest request) {
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser= actionService.viewAllRequest(request);
    	return new ModelAndView("viewAllRequest", "adminUser", adminUser);
	}

	
	
	
	
	
	
	
/* 
	
	/******************WORKING FOR HREF BY ID REJECT RQUEST**************STATRT******************************
	
	public ModelAndView Approve(@RequestParam String id, @ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		// List<Admin_user> userList = loginService.getUserList();
		// return new ModelAndView("userList", "userList", userList);
		// return (ModelMap) userList;
		
		System.out.println("APPROVED ID *************"+requestForm.getApproveID());
		System.out.println("APPROVED ID *************"+requestForm.getRejectID());
		System.out.println("APPROVED ID *************"+id);
	
		String requestId = id;
		System.out.println(requestForm.getCommands());
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser= actionService.approveRequest(requestId,request);
		//model.addAttribute("welcome");
		return new ModelAndView("approve", "adminUser", adminUser);
	}
	
	
/******************WORKING FOR HREF BY ID REJECT RQUEST**************STATRT******************************
	

	/******************WORKING FOR HREF BY ID REJECT RQUEST**************STATRT******************************
	
	
		
	@RequestMapping(value = "/reject", method = RequestMethod.GET)
	public ModelAndView reject(@RequestParam String id, @ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser= actionService.rejectrequest(id,request);
    	System.out.println("rejected value"+id);
    	//return new ModelAndView("requestList", "adminUser", adminUser);
    	return new ModelAndView("rejectedList", "adminUser", adminUser);
	}
	
	
	
*****************WORKING FOR HREF BY ID REJECT RQUEST**************END******************************
*/
	
	
	
	
	
	
	
	
	
	
}
