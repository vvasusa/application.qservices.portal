package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.pearson.model.Register;
import com.pearson.services.ActionService;

@Controller
@SessionAttributes
@RequestMapping("/")
// @SessionAttributes("login")
public class RegistrationController {

	@Autowired
	ActionService actionService;

	@Value("${From_Email}")
	private String from;

	
	@RequestMapping(value = "/done", method = RequestMethod.POST)
	public ModelAndView Getdetails(
			 @ModelAttribute("requestForm") @Valid Register register,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request, final Model model) {
		
		System.out.println(register.getFirstName());
		System.out.println(register.getLastName());
		System.out.println(register.getEmail());
		System.out.println("Binding result  " + result.hasErrors());
		System.out.println(register.getPhoneNo());
		System.out.println(register.getAddress1());
		System.out.println(register.getAddress2());
		register.setFirstName(register.getAddress3());

		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		System.out.println("INSIDE UPDATE"+ses_Id);
		
		register = actionService.userEntryDetails(register, request);
		
		if (result.hasErrors()) {
			return new ModelAndView("register", "register", register);
		}

		
		return new ModelAndView("success", "register", register);

	}

	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String Getdetail(
			@Valid @ModelAttribute("requestForm") Register register,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request, final Model model) {
		
		System.out.println(register.getFirstName());
		System.out.println(register.getLastName());
		System.out.println(register.getEmail());
		System.out.println("Binding result  " + result.hasErrors());
		System.out.println(register.getPhoneNo());
		System.out.println(register.getAddress1());
		System.out.println(register.getAddress2());
		register.setFirstName(register.getAddress3());

		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		System.out.println("INSIDE UPDATE"+ses_Id);
		
	//	requestForm = requestService.updateDetails(requestForm, request);
		
		/*if (result.hasErrors()) {
			return new ModelAndView("register", "user", register);
		}

		
		return new ModelAndView("update", "requestForm", register);*/
		
		return "register";

	}



	/* sample */
	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public
	 * String doLogin(@Valid @ModelAttribute("login") Admin1 userForm,
	 * BindingResult result, Map<String, Object> model) { if
	 * (result.hasErrors()) { return "index"; } return "error"; }
	 */

	/* sample end */

	
	/*
	 * Working example
	 * 
	 * @RequestMapping(value = "/login", method = RequestMethod.GET) public
	 * String Getdetails(@ModelAttribute("login") AdminUser data, Map<String,
	 * Object> map, HttpServletRequest request) {
	 * 
	 * map.put("login", data); map.put("userId",
	 * request.getParameter("userId"));
	 * 
	 * String u_name = (request.getParameter("log")); String p_word =
	 * (request.getParameter("pwd")); boolean value =
	 * loginService.loginValidation(u_name,p_word); if (value == true) return
	 * Constants.LOGIN_PAGE; return Constants.LOGIN_PAGE; }
	 */

	/* Working code for Login Page */
	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.GET) public
	 * String Getdetails() { boolean value = loginService.loginValidation(); if
	 * (value == true) return Constants.LOGIN_PAGE; return Constants.LOGIN_PAGE;
	 * }
	 */
	
}
