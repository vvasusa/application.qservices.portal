package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.controller.ActionController;
import com.pearson.controller.LoginController;
import com.pearson.model.AdminUser;
import com.pearson.model.Register;
import com.pearson.services.JavaMailService;
import com.pearson.services.JavaMailServiceImpl;

public class ActionDaoImpl implements ActionDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	ActionController actionController;

	@Autowired
	JavaMailService javaMailService;
	
	/*@Autowired
	GentrateUserId gentrateUserId;*/

	@Override
	public List<AdminUser> approveRequest(String requestId,
			HttpServletRequest request) {

		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		System.out.println(loginType);

		AdminUser user = null;
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			/* UPDATE QUERY FOR APPROVED REQUEST ID */
			ResultSet rs = null;
			// javaMailService.sendEmail();
			
			if (loginType.equals("QA")) {

				/******
				 * WRITE QUERY FOR TABLE WHERE STATUS APPROVED BY QA, WHERE
				 * STATUS =="APPROVED BY QA"
				 *********/
				/******
				 * WRITE QUERY UPDATE TABLE- COLUMN APPROVED BY
				 * =="APPROVED BY QA"
				 *********/
				rs = statement.executeQuery("select * from adminuser");

				/* call email method here for sending email */

				/*
				 * statement
				 * .executeQuery("SELECT * FROM adminuser where Status = "
				 * AdminUser user = null; + "");
				 */

			}

			else if (loginType.equals("")) {

				statement
						.executeQuery("SELECT * FROM adminuser where Status = "
								+ "");
			}

			else if (loginType.equals("")) {
				statement
						.executeQuery("SELECT * FROM adminuser where Status = "
								+ "");
			}

			else if (loginType.equals("")) {

				statement
						.executeQuery("SELECT * FROM adminuser where Status = "
								+ "");
			} else if (loginType.equals("")) {

				statement
						.executeQuery("SELECT * FROM adminuser where Status = "
								+ "");
			} else {
			}
			while (rs.next()) {
				user = new AdminUser();
				// rs.getString(rs.get)
				String value = rs.getString("loginType");
				user.setLoginType(rs.getString("loginType"));
				adminUser.add(user);
				System.out.println("inside rs");
				System.out.println(value);

			}

		}

		catch (Exception e) {
		}

		return adminUser;
	}

	@Override
	public Register newEntryDetails(Register register,
			HttpServletRequest request) {
		try {
			GentrateUserId Obj=new GentrateUserId();
			String s=	Obj.getUniqueID();

			
			System.out.println("UNIQUE ID"+s);
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("");
			
		} catch (Exception e) {
		}
		return null;
	}
}
