package com.pearson.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javassist.bytecode.stackmap.TypeData.ClassName;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;
import com.pearson.model.RequestForm;
import com.pearson.model.Requestor;
import com.pearson.services.RaiseRequestService;
import com.pearson.services.RequestService;

@Controller
@SessionAttributes
@RequestMapping("/")
public class RequestController {

	@Autowired
	RequestService requestService;

	@Autowired
	RaiseRequestService raiseRequestService;
	
	


	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView Getdetails(
			@Valid @ModelAttribute("requestForm") RequestForm requestForm,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request, final Model model) {
		
		
		/*
		 * public String doLogin(@Valid @ModelAttribute("userForm") User
		 * userForm, BindingResult result, Map<String, Object> model) {
		 */

		System.out.println(requestForm.getEmail());
		System.out.println("Binding result  " + result.hasErrors());
		System.out.println(requestForm.getFirstName());
		System.out.println(requestForm.getAddress());
		System.out.println(requestForm.getLastName());
		System.out.println(requestForm.getPhoneNo());
		System.out.println(requestForm.getRequestName());
		System.out.println(requestForm.getRequestName());
		requestForm.setFirstName(requestForm.getFirstName());

		/*
		 * HttpSession session = request.getSession(); String id = (String)
		 * session.getAttribute("MySessionId");
		 */
		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		System.out.println("INSIDE UPDATE" + ses_Id);
		/*
		 * session.setAttribute("email", email); System.out.println("id  " +
		 * id);
		 */

		// request.getSession().setAttribute("username", "nouser");

		// public String requestList() {
		// System.out.println("hi inside req sdfsdfsdf  controller  " + s);
		// System.out.println(session.getAttribute("MySessionVariable"));
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser = requestService.updateDetails(requestForm, request);

		if (result.hasErrors()) {
			return new ModelAndView("requestList", "adminUser", adminUser);
		}

		// return new ModelAndView("requestList", "requestorForm",
		// requestorForm);
		/* return new ModelAndView("update", "requestForm", requestForm); */
		return new ModelAndView("update", "adminUser", adminUser);
	}

	/*
	 * working example
	 * 
	 * @RequestMapping(value = "/requestList", method = RequestMethod.GET)
	 * public ModelAndView requestList(@RequestParam String id, @ModelAttribute
	 * AdminUser user) {
	 * 
	 * 
	 * //public String requestList() { System.out.println("hi inside req");
	 * System.out.println(id); System.out.println("CXVXCVXCVXCVXC"); user=
	 * requestService.requestList(id);
	 * 
	 * return new ModelAndView("requestList", "user", user); // return
	 * "requestList";
	 */

	@RequestMapping(value = "/requestList", method = RequestMethod.GET)
	public ModelAndView requestList(@ModelAttribute AdminUser user,
			Map<String, Object> map, HttpServletRequest request) {

		// request.getSession();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionId");
		System.out.println("INSIDE /requestList  " + id);
		// request.getSession().setAttribute("username", "nouser");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser = requestService.requestList(id, request);
		System.out.println("THE LOGIN TYPE RETURN TO JSP" + user.getLoginType());
		return new ModelAndView("request_test", "adminUser", adminUser);
		// return "requestList";

	}

	

	@ModelAttribute("RequestForm")
	@RequestMapping(value = "/raiseRequest", method = RequestMethod.POST)
	public ModelAndView rasieRequest(@ModelAttribute RaiseRequest raiseRequest,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request) {

		String serviceName = raiseRequest.getService();
		String serviceID = raiseRequest.getServiceID();
		
		System.out.println(serviceName +  serviceID);
		RequestForm requestForm = new RequestForm();
		System.out.println(requestForm.getPhoneNo());
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionId");
		System.out.println("INSIDE /requestList  " + id);
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		adminUser = raiseRequestService.newRequestService(id, raiseRequest,	request);
	
		// System.out.println("THE LOGIN TYPE RETURN TO JSP"+user.getLoginType());
		/*if (result.hasErrors()) {
			return new ModelAndView("", "adminUser", adminUser);
		}*/
		
		return new ModelAndView("raiseReq", "adminUser", adminUser);
		// return "requestList";

	}

	
	
	@ModelAttribute("requestForm")
	@RequestMapping(value = "/doneReq", method = RequestMethod.POST)
	public ModelAndView rasieRequestFinalpage(
			@Valid @ModelAttribute("requestForm") RequestForm requestForm,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request) {

		String serviceID = requestForm.getReq_ServiceID();
		String serviceName = requestForm.getReq_ServiceName();
		
		System.out.println(requestForm.getAddress());

		System.out.println(requestForm.getPhoneNo() + "" + serviceName + ""	+ serviceID);
		System.out.println(requestForm.getCommands());
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionId");

		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		
		if (result.hasErrors()) {
			AdminUser user = null;
			// AdminUser user = new AdminUser();
			user = new AdminUser();
			user.setFirstName(requestForm.getFirstName());
			user.setLastName(requestForm.getLastName());
			user.setEmail(requestForm.getEmail());
			user.setPhoneNo(requestForm.getPhoneNo());
			user.setPhoneNo(requestForm.getSubject());
			user.setAddress(requestForm.getEmail());
			adminUser.add(user);
			
			return new ModelAndView("raiseReq", "adminUser", adminUser);
		}
		adminUser = raiseRequestService.newRequestServiceFinal(id, requestForm,request);
		//return new ModelAndView("success", "adminUser", adminUser);
		
		return new ModelAndView("successRequestList", "adminUser", adminUser);

	}
	
	
	@ModelAttribute("requestForm")
	@RequestMapping(value = "/userRequestList", method = RequestMethod.GET)
	public ModelAndView UserRequestList(
			@Valid @ModelAttribute("requestForm") RequestForm requestForm,
			BindingResult result, Map<String, Object> map,
			HttpServletRequest request) {

		String serviceID = requestForm.getReq_ServiceID();
		String serviceName = requestForm.getReq_ServiceName();

		System.out.println(requestForm.getPhoneNo() + "" + serviceName + ""
				+ serviceID);
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionId");

		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		
		/*if (result.hasErrors()) {
			AdminUser user = null;
			// AdminUser user = new AdminUser();
			user = new AdminUser();
			user.setFirstName(requestForm.getFirstName());
			user.setLastName(requestForm.getLastName());
			user.setEmail(requestForm.getEmail());
			user.setPhoneNo(requestForm.getPhoneNo());
			user.setPhoneNo(requestForm.getSubject());
			user.setAddress(requestForm.getEmail());
			adminUser.add(user);
			
			return new ModelAndView("raiseReq", "adminUser", adminUser);
		}*/
		adminUser = requestService.UserRequestList(id, requestForm,request);
		return new ModelAndView("userRequestList", "adminUser", adminUser);

	}
	
	
}
