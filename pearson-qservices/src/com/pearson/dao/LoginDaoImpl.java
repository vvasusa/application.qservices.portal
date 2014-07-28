package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.Constants;
import com.pearson.model.Admin1;
import com.pearson.model.ContactUs;

public class LoginDaoImpl implements LoginDao {
	

	@Autowired
	DataSource dataSource;
	

	@Override
	public boolean getLoginDeatils(String uname, String pass,String valid,
			HttpServletRequest request) {
		
		Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());

		HttpSession session = request.getSession();
		// HttpSession session1 = request.getSession();

		List<Admin1> list = new ArrayList<Admin1>();

		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from adminuser");
			int i = 0;
			while (rs.next()) {
				System.out.println("FROM JSP PAGE  " + uname);
				System.out.println("FROM JSP PAGE " + pass);
				String username = (rs.getString("userId"));
				String password = (rs.getString("password"));
				System.out.println("FROM DATABASE userId " + username);
				System.out.println("FROM DATABASE userId " + password);
				i = i + 1;

				if (StringUtils.endsWithIgnoreCase(uname,
						rs.getString("userId"))
						&& StringUtils.endsWithIgnoreCase(pass,
								rs.getString("password"))) {

					String userId = (rs.getString("userId"));
					String loginType = (rs.getString("loginType"));
					String loginName=rs.getString("firstName").concat(rs.getString("lastName"));
					request.getSession(true).setAttribute("loginName",loginName);
					
					/* SET SESSION HERE THE LOGIN TYPE - VISITOR, ADMIN, QA-LEAD */
					String Table = Constants.LOGIN_MODE_ADMIN;
					
					request.getSession(true).setAttribute("MySessionId", userId);
					request.getSession(true).setAttribute("Table", Table);
					request.getSession(true).setAttribute("loginType",loginType);
					System.out.println(request.getAttribute("Valid"));
					
					return true;
				}

				// session.removeAttribute("MySessionVariable");
			/*	
				request.getSession(false).removeAttribute("MySessionId");
				request.getSession(false).removeAttribute("Table");
				request.getSession(false).removeAttribute("loginType");
			
					String valid=Constants.LOGIN_FAILED;
				request.getSession(true).setAttribute("Valid",valid);*/
				
				
			}

			/* for requestor table user/pass validation */
			ResultSet rs1 = statement
					.executeQuery("select * from  REQUESTOR");
			while (rs1.next()) {
				System.out.println("FROM JSP PAGE  " + uname);
				System.out.println("FROM JSP PAGE " + pass);
				String username = (rs1.getString("requestorId"));
				String s = username.toString();
				String password = (rs1.getString("password"));
				System.out.println("FROM DATABASE userId " + username);
				System.out.println("FROM DATABASE userId " + password);

				boolean retval1 = StringUtils.startsWithIgnoreCase(uname,
						username);
				boolean retval2 = uname.toString().equalsIgnoreCase(
						rs1.getString("requestorId"));
				boolean retval3 = uname.equalsIgnoreCase(username);

				boolean retval4 = StringUtils.endsWithIgnoreCase(uname,
						username);
				boolean retval5 = uname.toString().matches(
						rs1.getString("requestorId"));
				boolean retval6 = uname.equals(username);

				boolean retval7 = uname.contentEquals(username);

				System.out.println(" equal to retval1 = " + retval1);
				System.out.println(" equal retval2 = " + retval2);
				System.out.println(" equal to retval3 = " + retval3);

				System.out.println(" equal to retval4 = " + retval4);
				System.out.println(" equal retval5 = " + retval5);
				System.out.println(" equal to retval6 = " + retval6);
				System.out.println(" equal to retval7 = " + retval7);

				if (uname.toString().equalsIgnoreCase(username)
						&& pass.equalsIgnoreCase(rs1.getString("password"))) {

					String userId = (rs1.getString("requestorId"));
					String loginType = (rs1.getString("loginType"));
					System.out.println("user id" + userId);
					System.out.println("loginType " + loginType);

					/* SET SESSION HERE THE LOGIN TYPE - VISITOR, ADMIN, QA-LEAD */
					String Table = Constants.LOGIN_MODE_REQUESTOR;
					String loginName=rs1.getString("firstName").concat(rs1.getString("lastName"));
					request.getSession(true).setAttribute("loginName",loginName);
					request.getSession(true).setAttribute("MySessionId", userId);
					request.getSession(true).setAttribute("Table", Table);
					request.getSession(true).setAttribute("loginType",loginType);
					
					
					//request.setAttribute("Valid", Valid);
					
					/* SET SESSION HERE THE LOGIN TYPE - VISITOR, ADMIN, QA-LEAD */
					// request.getSession(true).setAttribute("MySessionId",userId);

					// request.getSession(true).setAttribute("MySessionLoginType",loginType);
					// session1.setAttribute("sessionID", uname);
					return true;
				}

				// session.removeAttribute("MySessionVariable");
			//	String valid=Constants.LOGIN_FAILED;
			//	request.getSession(true).setAttribute("Valid",valid);
				
				//request.setAttribute("Valid", Valid);
				request.getSession(false).removeAttribute("MySessionId");
				request.getSession(false).removeAttribute("Table");
				request.getSession(false).removeAttribute("loginType");
				

			}
			/* for requestor table user/pass validation */

		} catch (SQLException e) {
			logger1.info("LoginDaoImpl --> getLoginDeatils"+e);

		}

		/*
		 * String param = new String("logout");
		 * session.setAttribute("MySessionVariable", param);
		 */
		return false;
	}

	@Override
	public void contactUsDetails(ContactUs contactUs) {
		Logger logger = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());
		try {

			
			contactUs.getAddress();
			contactUs.getCompany();
			contactUs.getMessage();
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			int rs = statement.executeUpdate("INSERT INTO ContactUs(name,email,phoneNo,country,subject,message)VALUES('"
							+ contactUs.getName()
							+ "','"
							+ contactUs.getEmail()
							+ "','"
							+ contactUs.getPhoneNo()
							+ "','"
							+ contactUs.getAddress()
							+ "','"
							+ contactUs.getSubject()
							+ "','" + contactUs.getMessage() + "')");
		}
		catch(Exception e){
		System.out.println(e);
		logger.info("LogonDaoImpl-->ContactUsdetails"+e);
		}
		
	}

}
