package com.pearson.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
import com.pearson.model.Register;
import com.pearson.model.RequestForm;
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
		// return "aaaaaaaaa";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request) {
		request.getSession(false).removeAttribute("MySessionId");
		request.getSession(false).removeAttribute("Table");
		request.getSession(false).removeAttribute("loginType");
		return "index";
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.POST)
	public String contact(ModelMap model, HttpServletRequest request) {
		model.addAttribute("contact", "we ill contact you");
		return "ContactUs";
		// return "aaaaaaaaa";
	}

	
	/*
	 * @RequestMapping(value = "/register", method = RequestMethod.POST) public
	 * ModelAndView Getdetails(
	 * 
	 * @Valid @ModelAttribute("requestForm") Register register, BindingResult
	 * result, Map<String, Object> map, HttpServletRequest request, final Model
	 * model) {
	 * 
	 * System.out.println(register.getFirstName());
	 * System.out.println(register.getLastName());
	 * System.out.println(register.getEmail());
	 * System.out.println("Binding result  " + result.hasErrors());
	 * System.out.println(register.getPhoneNo());
	 * System.out.println(register.getAddress1());
	 * System.out.println(register.getAddress2());
	 * register.setFirstName(register.getAddress3());
	 * 
	 * String ses_Id = (String) request.getSession().getAttribute(
	 * "MySessionId"); System.out.println("INSIDE UPDATE"+ses_Id);
	 * 
	 * // requestForm = requestService.updateDetails(requestForm, request);
	 * 
	 * if (result.hasErrors()) { return new ModelAndView("register", "user",
	 * register); }
	 * 
	 * 
	 * return new ModelAndView("update", "requestForm", register);
	 * 
	 * }
	 */

	/* sample */
	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public
	 * String doLogin(@Valid @ModelAttribute("login") Admin1 userForm,
	 * BindingResult result, Map<String, Object> model) { if
	 * (result.hasErrors()) { return "index"; } return "error"; }
	 */

	/* sample end */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Getdetails(@ModelAttribute("login") Admin1 data,
			Map<String, Object> map, HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.getId();
		String u_name = (data.getLog());
		String p_word = (data.getPwd());

		boolean value = loginService.loginValidation(u_name, p_word, request);

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
		if (value == true)
			return Constants.INDEX_PAGE;
		return Constants.INDEX_PAGE;
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

}
