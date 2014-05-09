package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;


import com.pearson.model.Admin1;
import com.pearson.model.AdminUser;
import com.pearson.services.*;
import com.Constants;

@Controller
@SessionAttributes
@RequestMapping("/")
//public class LoginController extends SimpleFormController {
public class LoginController{

	@Autowired
	LoginService loginService;

	@Value("${From_Email}")
	private String from;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage(ModelMap model, HttpServletRequest request) {
		//System.out.println(from);
		return "index";
	}
	
	
	
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
		public String Getdetails(@ModelAttribute("login") Admin1 data, Map<String, Object> map,
	            HttpServletRequest request) {
	    	
	    	String u_name = (request.getParameter("log"));
	    	String p_word = (request.getParameter("pwd"));
	    	String name = (data.getLog());
	    	String word = (data.getPwd());
	    	System.out.println("inside login controller"+u_name);
	    	System.out.println("inside login controller"+p_word);
	    	System.out.println("inside from data "+name);
	    	System.out.println("inside from data"+word);
			boolean value = loginService.loginValidation(u_name,p_word);
			if (value == true)
				return Constants.LOGIN_PAGE;
			return Constants.LOGIN_PAGE;
	 }
	
	
	
	/* Working example
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Getdetails(@ModelAttribute("login") AdminUser data, Map<String, Object> map,
            HttpServletRequest request) {
    	
    	map.put("login", data);
        map.put("userId", request.getParameter("userId"));
    	
    	String u_name = (request.getParameter("log"));
    	String p_word = (request.getParameter("pwd"));
		boolean value = loginService.loginValidation(u_name,p_word);
		if (value == true)
			return Constants.LOGIN_PAGE;
		return Constants.LOGIN_PAGE;
	}
	*/
	

	/*
	 * public LoginController() { setCommandClass(AdminUser.class);
	 * setCommandName("index"); }
	 * 
	 * @RequestMapping(value = "/login", method = RequestMethod.GET) // public
	 * String Getdetails() { protected ModelAndView
	 * Getdetails(HttpServletRequest request, HttpServletResponse response,
	 * Object command, BindException errors) throws Exception { AdminUser login
	 * = (AdminUser)command; boolean value = loginService.loginValidation();
	 * String fname=login.getFirstName(); System.out.println(fname); if (value
	 * == true) return new
	 * ModelAndView("login","customer",Constants.LOGIN_PAGE); //return
	 * Constants.LOGIN_PAGE; return null;
	 * 
	 * //return Constants.LOGIN_PAGE; }
	 */


           

	/*Working code for Login Page*/
	/*@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Getdetails() {
		boolean value = loginService.loginValidation();
		if (value == true)
			return Constants.LOGIN_PAGE;
		return Constants.LOGIN_PAGE;
	}
*/
	@RequestMapping(value = "/NewFile", method = RequestMethod.GET)
	public String NewFile(ModelMap model, HttpServletRequest request) {
		return "NewFile";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexPage1(ModelMap model, HttpServletRequest request) {
		return "index";
	}

	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String servicePage(ModelMap model, HttpServletRequest request) {
		return "services";
	}

	@RequestMapping(value = "/portfolio", method = RequestMethod.GET)
	public String portfolioPage(ModelMap model, HttpServletRequest request) {
		return "portfolio";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage(ModelMap model, HttpServletRequest request) {
		return "contact";
	}

	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(ModelMap model, HttpServletRequest request) {
		return "blog";
	}

}
