package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.services.ActionService;
import com.pearson.services.RequestService;

@Controller
@SessionAttributes
@RequestMapping("/")
// @SessionAttributes("login")
public class RegistrationController {

	@Autowired
	ActionService actionService;

	@Autowired
	RequestService requestService;

	@Value("${From_Email}")
	private String from;

	// @Autowired private RegistrationValidation registrationValidation;
	 
	// @InitBinder private void initBinder(WebDataBinder binder) {
	// binder.setValidator(registrationValidation); }
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView Getdetail(
			@Valid @ModelAttribute("requestForm") Register register,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request, final Model model) {

		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		System.out.println("INSIDE UPDATE" + ses_Id);

		/********************** sendmail here with temp pass ********************************/
		return new ModelAndView("register", "user", register);
	}

	@RequestMapping(value = "/register/done", method = RequestMethod.POST)
	public ModelAndView Getdetails(

	@ModelAttribute("register") @Valid Register register, BindingResult result,
			Map<String, Object> map, HttpServletRequest request,
			ModelAndView model) {

		/*
		 * public ModelAndView Getdetails(
		 * 
		 * @ModelAttribute("register") @Valid Register register, BindingResult
		 * result, Model model) {
		 */
		
		
		// public ModelAndView save(@Valid Register register, BindingResult
		// result, HttpServletRequest request, ModelAndView model)

		System.out.println(register.getFirstName());
		System.out.println(register.getLastName());
		System.out.println(register.getEmail());
		System.out.println("Binding result  " + result.hasErrors());
		System.out.println(register.getPhoneNo());
		System.out.println(register.getAddress1());
		System.out.println(register.getAddress2());

		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");

		if (result.hasErrors()) {
			model.setViewName("register");

			System.out
					.println("**********************************************************");
			System.out.println(result.hasErrors());
			System.out.println(result.getAllErrors());
			System.out.println(result.hasFieldErrors(register.getEmail()));
			System.out
					.println("***********************************************************");
			register.setPhoneNo(register.getPhoneNo());
			register.setEmail(register.getEmail());

			/*
			 * model.addAttribute("email", register.getEmail());
			 * model.addAttribute("age", register.getPhoneNo());
			 * model.addAttribute("errors", result.getFieldErrors());
			 */
			model.addObject("errors", result.getFieldErrors());
			//model.addObject("register", register);
			// Add errors to the Model so that they can be used in the view

			model.addObject("errors", result.getFieldErrors());

			System.out.println(model.getViewName());

			for (FieldError error : result.getFieldErrors()) {
				System.out.println(error.getField() + " - "
						+ error.getDefaultMessage());
				model.addObject("errors",
						result.getFieldErrors());
				register.setError(error.getDefaultMessage());
				register.setPnoerror(error.getDefaultMessage());
				register.setEmailerror(error.getDefaultMessage());

				model.addAllObjects(result.getModel());
			}
			// return new ModelAndView("register");
			// return new ModelAndView("register", "register", register);
			return model;
		}
		register = actionService.newRegistrationDetails(register, request);
		return new ModelAndView("confirmPass", "register", register);
		
	}

	/* Sample check */

	public ModelAndView save(@Valid Register register,
			BindingResult bindingResults) {
		ModelAndView mv = new ModelAndView();
		// Check for validation errors
		if (bindingResults.hasErrors()) {
			mv.setViewName("register");
			mv.addObject("register", register);
			// Add errors to the Model so that they can be used in the view

			mv.addObject("errors", bindingResults.getFieldErrors());
			// Print the errors to the console
			System.out.println("Validation errors:");
			for (FieldError error : bindingResults.getFieldErrors()) {
				System.out.println(error.getField() + " - "
						+ error.getDefaultMessage());
				mv.addAllObjects(bindingResults.getModel());
			}
			return mv;
		}
		
		return new ModelAndView("confirmPass", "register", register);
	}

	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public ModelAndView successNewEntry(
			@ModelAttribute("password") @Valid Password password,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request, final Model model) {

		System.out.println(password.getCurrentPass());
		System.out.println(password.getNewPass());
		System.out.println(password.getConfirmPass());
		System.out.println(password.getEmail());
		System.out.println("Binding result  " + result.hasErrors());

		if (result.hasErrors()) {
			return new ModelAndView("confirmPass", "register", password);
		}
		password = actionService.successNewEntry(password, request);
		return new ModelAndView("success", "register", password);
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

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		return messageSource;
	}

}
