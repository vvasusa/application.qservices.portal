package com.pearson.controller;

import java.util.Map;
import java.util.logging.Level;

import javassist.bytecode.stackmap.TypeData.ClassName;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.Constants;
import com.pearson.model.Admin1;
import com.pearson.model.ContactUs;
import com.pearson.model.Register;
import com.pearson.model.RequestForm;
import com.pearson.model.ServiceIntro;
import com.pearson.services.ActionService;
import com.pearson.services.LoginService;

@Controller
@SessionAttributes
@RequestMapping("/")
// @SessionAttributes("login")
public class LoginController {

	@Autowired
	LoginService loginService;

	@Autowired
	ActionService actionService;

	@Value("${From_Email}")
	private String from;

	@Value("${Request.statusQA}")
	private String userNameRequired;

	static Logger logger = Logger.getLogger(LoginController.class.getName());

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage(ModelMap model, HttpServletRequest request) {
		System.out.println(userNameRequired);
		return "index";
		// return "aaaaaaaaa";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request) {

		try {
			request.getSession(false).removeAttribute("MySessionId");
			request.getSession(false).removeAttribute("Table");
			request.getSession(false).removeAttribute("loginType");
			request.getSession(false).removeAttribute("Valid");

			logger.info("Info: Closing application");
			logger.error("Error: Closing application");
			logger.warn("Warn: Closing application");
		} catch (Exception e) {
			System.out.println(e);
		}
		return "index";
	}

	@RequestMapping(value = "/contactUs", method = RequestMethod.POST)
	public String ContactUs(@ModelAttribute("login") ContactUs contactUs,ModelMap model, HttpServletRequest request) {
		try {
			model.addAttribute("contact", "we ill contact you");
			loginService.contactUsDateils(contactUs);
		} catch (Exception e) {

			System.out.println(e);
		}
		return "ContactUs";
	}



	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView Getdetails(@ModelAttribute("login") Admin1 data,
			Map<String, Object> map, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		session.getId();
		String u_name = (data.getLog());
		String p_word = (data.getPwd());
		String valid = (data.getVal());

		boolean value = loginService.loginValidation(u_name, p_word,valid,request);

		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		String ses_Type = (String) request.getSession().getAttribute(
				"loginType");
		String ses_Table = (String) request.getSession().getAttribute("Table");
		System.out.println("session value in request list controller" + ses_Id);
		System.out.println("session value in request list controller"
				+ ses_Type);
		System.out.println("session value in request list controller"
				+ ses_Table);
		if (value == true){
		data.setVal("sucess");
		
		}else{
		String Valid=Constants.LOGIN_FAILED;
		request.getSession(true).setAttribute("Valid", Valid);
		data.setVal("failed");
		}
		return new ModelAndView("index", "data", data);
	
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
	public ModelAndView servicePage(ModelMap model, HttpServletRequest request) {
		ServiceIntro serviceIntro;
		serviceIntro = actionService.getAllServiceIntro();

		return new ModelAndView("services", "serviceIntro", serviceIntro);
	}

	@RequestMapping(value = "/portfolio", method = RequestMethod.GET)
	public String portfolioPage(ModelMap model, HttpServletRequest request) {
		return "portfolio";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage(ModelMap model, HttpServletRequest request) {

		/* MAIL OR SAVE DATA IN DATABASE */
		return "contact";
	}

	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(ModelMap model, HttpServletRequest request) {
		return "blog";
	}

	
/********************	SERVICE PAGES*********************************/
	
	@RequestMapping(value = "/automated", method = RequestMethod.GET)
	public String Automated(ModelMap model, HttpServletRequest request) {
		return "automation";
	}

	@RequestMapping(value = "/cloud", method = RequestMethod.GET)
	public String cloud(ModelMap model, HttpServletRequest request) {
		return "cloud";
	}

	@RequestMapping(value = "/compliance", method = RequestMethod.GET)
	public String Compliance(ModelMap model, HttpServletRequest request) {
		return "compliance_new";
	}

	@RequestMapping(value = "/crm", method = RequestMethod.GET)
	public String crm(ModelMap model, HttpServletRequest request) {
		return "crm";
	}

	@RequestMapping(value = "/data", method = RequestMethod.GET)
	public String data(ModelMap model, HttpServletRequest request) {
		return "data";
	}

	@RequestMapping(value = "/environmentManage", method = RequestMethod.GET)
	public String environmentManage(ModelMap model, HttpServletRequest request) {
		return "testEnvironment_new";
	}

	@RequestMapping(value = "/erp", method = RequestMethod.GET)
	public String Erp(ModelMap model, HttpServletRequest request) {
		return "erp";
	}

	@RequestMapping(value = "/infrastructure", method = RequestMethod.GET)
	public String infrastructure(ModelMap model, HttpServletRequest request) {
		return "infrastructure_new";
	}

	@RequestMapping(value = "/middleware", method = RequestMethod.GET)
	public String middleware(ModelMap model, HttpServletRequest request) {
		return "middleware_new";
	}

	@RequestMapping(value = "/mobile", method = RequestMethod.GET)
	public String mobile(ModelMap model, HttpServletRequest request) {
		return "mobile_new";
	}

	@RequestMapping(value = "/online", method = RequestMethod.GET)
	public String online(ModelMap model, HttpServletRequest request) {
		return "online";
	}

	@RequestMapping(value = "/performance", method = RequestMethod.GET)
	public String Performance(ModelMap model, HttpServletRequest request) {
		return "performance_new";
	}

	@RequestMapping(value = "/QaProgramManagement", method = RequestMethod.GET)
	public String qaProgramManagement(ModelMap model, HttpServletRequest request) {
		return "QaProgramManagement";
	}

	@RequestMapping(value = "/qualityConsulting", method = RequestMethod.GET)
	public String qualityConsulting(ModelMap model, HttpServletRequest request) {
		return "qualityConsulting";
	}

	@RequestMapping(value = "/security", method = RequestMethod.GET)
	public String security(ModelMap model, HttpServletRequest request) {
		return "security_new";
	}

	
	/*@RequestMapping(value = "/QAssesment", method = RequestMethod.GET)
	public String QAssesmentPage(ModelMap model, HttpServletRequest request) {
		return "QAssesment";
	}

	@RequestMapping(value = "/TestProgram", method = RequestMethod.GET)
	public String TestProgramPage(ModelMap model, HttpServletRequest request) {
		return "TestProgram";
	}

	@RequestMapping(value = "/Middleware", method = RequestMethod.GET)
	public String MiddlewarePage(ModelMap model, HttpServletRequest request) {
		return "Middleware";
	}

	@RequestMapping(value = "/DataIntegration", method = RequestMethod.GET)
	public String DataIntegrationPage(ModelMap model, HttpServletRequest request) {
		return "DataIntegration";
	}

	@RequestMapping(value = "/Automated", method = RequestMethod.GET)
	public String AutomatedPage(ModelMap model, HttpServletRequest request) {
		return "Automated";
	}

	@RequestMapping(value = "/Mobile", method = RequestMethod.GET)
	public String MobilePage(ModelMap model, HttpServletRequest request) {
		return "Mobile";
	}

	@RequestMapping(value = "/OnlineEcommerce", method = RequestMethod.GET)
	public String OnlineEcommercePage(ModelMap model, HttpServletRequest request) {
		return "OnlineEcommerce";
	}

	@RequestMapping(value = "/OracleERP", method = RequestMethod.GET)
	public String OracleERPPage(ModelMap model, HttpServletRequest request) {
		return "OracleERP";
	}

	@RequestMapping(value = "/SalesForce", method = RequestMethod.GET)
	public String SalesForcePage(ModelMap model, HttpServletRequest request) {
		return "SalesForce";
	}

	@RequestMapping(value = "/Performance ", method = RequestMethod.GET)
	public String PerformancePage(ModelMap model, HttpServletRequest request) {
		return "Performance";
	}

	@RequestMapping(value = "/Security ", method = RequestMethod.GET)
	public String SecurityPage(ModelMap model, HttpServletRequest request) {
		return "Security";
	}

	@RequestMapping(value = "/Compliance", method = RequestMethod.GET)
	public String CompliancePage(ModelMap model, HttpServletRequest request) {
		return "Compliance";
	}

	@RequestMapping(value = "/Infrastructure", method = RequestMethod.GET)
	public String InfrastructurePage(ModelMap model, HttpServletRequest request) {
		return "Infrastructure";
	}

	@RequestMapping(value = "/PerformanceEngineering", method = RequestMethod.GET)
	public String PerformanceEngineeringPage(ModelMap model,
			HttpServletRequest request) {
		return "PerformanceEngineering";
	}

	@RequestMapping(value = "/TestData", method = RequestMethod.GET)
	public String TestDataPage(ModelMap model, HttpServletRequest request) {
		return "TestData";
	}

	@RequestMapping(value = "/TestEnvironment", method = RequestMethod.GET)
	public String TestEnvironmentPage(ModelMap model, HttpServletRequest request) {
		return "TestEnvironment";
	}

	@RequestMapping(value = "/InfraStructure", method = RequestMethod.GET)
	public String InfraStructure(ModelMap model, HttpServletRequest request) {
		return "InfraStructure";
	}
	
	@RequestMapping(value = "/lostPassword", method = RequestMethod.GET)
	public String lostPassword(ModelMap model, HttpServletRequest request) {
		
		return "lostPass";
	}
	*/

}
