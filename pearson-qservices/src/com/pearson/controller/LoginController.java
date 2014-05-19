package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Constants;
import com.pearson.model.Admin1;
import com.pearson.services.LoginService;

@Controller
@SessionAttributes
@RequestMapping("/")
// @SessionAttributes("login")
public class LoginController {

	@Autowired
	LoginService loginService;

	@Value("${From_Email}")
	private String from;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage(ModelMap model, HttpServletRequest request) {
				return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Getdetails(@ModelAttribute("login") Admin1 data,
			Map<String, Object> map, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		HttpSession session1 = request.getSession();
		session.getId();
		String u_name = (data.getLog());
		String p_word = (data.getPwd());
		boolean value = loginService.loginValidation(u_name, p_word, request);
		if (value == true)
			return Constants.INDEX_PAGE;
		return Constants.ERROR_PAGE;
	}

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

	@RequestMapping(value = "/QAssesment", method = RequestMethod.GET)
	public String QAssesmentPage(ModelMap model, HttpServletRequest request)
	{		
		return "QAssesment";
     }
	
	@RequestMapping(value = "/TestProgram", method = RequestMethod.GET)
	public String TestProgramPage(ModelMap model, HttpServletRequest request)
	{		
		return "TestProgram";
     }
	
	@RequestMapping(value = "/Middleware", method = RequestMethod.GET)
	public String MiddlewarePage(ModelMap model, HttpServletRequest request)
	{		
		return "Middleware";
     }
	
	@RequestMapping(value = "/DataIntegration", method = RequestMethod.GET)
	public String DataIntegrationPage(ModelMap model, HttpServletRequest request)
	{		
		return "DataIntegration";
     }
	@RequestMapping(value = "/Automated", method = RequestMethod.GET)
	public String AutomatedPage(ModelMap model, HttpServletRequest request)
	{		
		return "Automated";
     }
	
	@RequestMapping(value = "/Mobile", method = RequestMethod.GET)
	public String MobilePage(ModelMap model, HttpServletRequest request)
	{		
		return "Mobile";
     }
	
	
	@RequestMapping(value = "/OnlineEcommerce", method = RequestMethod.GET)
	public String OnlineEcommercePage(ModelMap model, HttpServletRequest request)
	{		
		return "OnlineEcommerce";
     }
	
	@RequestMapping(value = "/OracleERP", method = RequestMethod.GET)
	public String OracleERPPage(ModelMap model, HttpServletRequest request)
	{		
		return "OracleERP";
     }
	
	@RequestMapping(value = "/SalesForce", method = RequestMethod.GET)
	public String SalesForcePage(ModelMap model, HttpServletRequest request)
	{		
		return "SalesForce";
     }
	
	@RequestMapping(value = "/Performance ", method = RequestMethod.GET)
	public String PerformancePage(ModelMap model, HttpServletRequest request)
	{		
		return "Performance";
     }
	
	
	@RequestMapping(value = "/Security ", method = RequestMethod.GET)
	public String SecurityPage(ModelMap model, HttpServletRequest request)
	{		
		return "Security";
     }
	
	@RequestMapping(value = "/Compliance", method = RequestMethod.GET)
	public String CompliancePage(ModelMap model, HttpServletRequest request)
	{		
		return "Compliance";
     }
	
	@RequestMapping(value = "/Infrastructure", method = RequestMethod.GET)
	public String InfrastructurePage(ModelMap model, HttpServletRequest request)
	{		
		return "Infrastructure";
     }
	
	@RequestMapping(value = "/PerformanceEngineering", method = RequestMethod.GET)
	public String PerformanceEngineeringPage(ModelMap model, HttpServletRequest request)
	{		
		return "PerformanceEngineering";
     }
	
	@RequestMapping(value = "/TestData", method = RequestMethod.GET)
	public String TestDataPage(ModelMap model, HttpServletRequest request)
	{		
		return "TestData";
     }
	
	@RequestMapping(value = "/TestEnvironment", method = RequestMethod.GET)
	public String TestEnvironmentPage(ModelMap model, HttpServletRequest request)
	{		
		return "TestEnvironment";
     }
	
}

