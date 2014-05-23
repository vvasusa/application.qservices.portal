package com.pearson.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pearson.services.ActionService;

@Controller
@SessionAttributes
@RequestMapping("/")
public class ActionController {
	@Autowired
	ActionService actionService;
	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- START */

	@RequestMapping(value = "/approve", method = RequestMethod.GET)
	public ModelMap Approve(ModelMap model, HttpServletRequest request) {
		// List<Admin_user> userList = loginService.getUserList();
		// return new ModelAndView("userList", "userList", userList);
		// return (ModelMap) userList;
		String id = "";
	//	actionService.approveRequest(id);
		model.addAttribute("welcome");
		return model;
	}

	@RequestMapping(value = "/reject", method = RequestMethod.GET)
	public ModelMap Reject(ModelMap model, HttpServletRequest request) {
		// List<Admin_user> userList = loginService.getUserList();
		// return new ModelAndView("userList", "userList", userList);
		// return (ModelMap) userList;
		return model;
	}

	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- END */
}
