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


	@RequestMapping(value = "/approve", method = RequestMethod.GET)
	 
	public ModelAndView Approve(@RequestParam String id, @ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		// List<Admin_user> userList = loginService.getUserList();
		// return new ModelAndView("userList", "userList", userList);
		// return (ModelMap) userList;
		
		System.out.println("APPROVED ID *************"+requestForm.getApproveID());
		System.out.println("APPROVED ID *************"+id);
	
		String requestId = id;
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser= actionService.approveRequest(requestId,request);
		//model.addAttribute("welcome");
		return new ModelAndView("approve", "adminUser", adminUser);
	}

	
	@RequestMapping(value = "/reject", method = RequestMethod.GET)
	public String reject(@RequestParam String id, @ModelAttribute("requestForm") RequestForm requestForm, HttpServletRequest request) {
		// List<Admin_user> userList = loginService.getUserList();
		// return new ModelAndView("userList", "userList", userList);
		// return (ModelMap) userList;
		
		
	System.out.println("rejected value"+id);
	
		return "login";
	}

	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- END */
}
