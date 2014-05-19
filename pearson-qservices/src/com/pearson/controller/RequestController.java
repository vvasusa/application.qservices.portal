package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;
import com.pearson.model.Requestor;
import com.pearson.services.RequestService;

@Controller
@SessionAttributes
@RequestMapping("/")
public class RequestController {

	@Autowired
	RequestService requestService;

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String Getdetails(@ModelAttribute("update") RequestForm requestForm,
			Map<String, Object> map, HttpServletRequest request) {

		System.out.println(requestForm.getEmail());
		String email = (requestForm.getRequestid());
		System.out.println(requestForm.getRequestid());
		System.out.println(requestForm.getFirstname());
		System.out.println(requestForm.getPhoneo());
		System.out.println(requestForm.getRequestname());

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionVariable");
		session.setAttribute("email", email);
		System.out.println("id  " + id);

		// request.getSession().setAttribute("username", "nouser");

		// public String requestList() {
		// System.out.println("hi inside req sdfsdfsdf  controller  " + s);
		// System.out.println(session.getAttribute("MySessionVariable"));

		boolean s = requestService.updateDetails(requestForm, request);

		// return new ModelAndView("requestList", "requestorForm",
		// requestorForm);
		return "update";

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
		String id = (String) session.getAttribute("MySessionVariable");
		System.out.println("id  " + id);

		// request.getSession().setAttribute("username", "nouser");
		user = requestService.requestList(id);

		return new ModelAndView("requestList", "user", user);
		// return "requestList";

	}
	

}
