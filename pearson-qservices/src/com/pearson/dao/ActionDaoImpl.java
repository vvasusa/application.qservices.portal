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
import org.springframework.util.StringUtils;

import com.pearson.controller.ActionController;
import com.pearson.controller.LoginController;
import com.pearson.controller.MailService;
import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.services.JavaMailService;
import com.pearson.services.JavaMailServiceImpl;
import com.pearson.controller.*;

public class ActionDaoImpl implements ActionDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	ActionController actionController;

	@Autowired
	JavaMailService javaMailService;

	/*
	 * @Autowired GentrateUserId gentrateUserId;
	 */

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
				user.setEmail(rs.getString("email"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setPhoneNo(rs.getString("phoneNo"));
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
	public Register newRegistrationDetails(Register register,
			HttpServletRequest request) {
		try {

			MailService mailService = new MailService();

			GentrateUserId Obj = new GentrateUserId();
			String requestorID = Obj.getUniqueID();
			String tempPass = Obj.getPassword();

			String firstName = register.getFirstName();
			String lastName = register.getLastName();
			String email = register.getEmail();
			String phone = register.getPhoneNo();
			String address = register.getAddress1();

			System.out.println("UNIQUE ID  " + requestorID);
			System.out.println("Temp pass  " + tempPass);

			/******************* sending email with uniqueid and temp password ************************************/
			// mailService.sendEmail(email, requestorID, tempPass);
			/******************* sending email with uniqueid and temp password ************************************/

			request.getSession(true).setAttribute("RequestorId", requestorID);
			request.getSession(true)
					.setAttribute("TempPass", Obj.getPassword());

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			int rs = statement
					.executeUpdate("INSERT INTO TempDetails(requestorId,tempPassword,firstName,lastName,address,phoneNo,email)VALUES('"
							+ requestorID
							+ "','"
							+ tempPass
							+ "','"
							+ firstName
							+ "','"
							+ lastName
							+ "','"
							+ email
							+ "','" + phone + "','" + address + "')");

		} catch (Exception e) {

			System.out.println(e);
		}
		return null;
	}

	@Override
	public Password successNewEntry(Password password,
			HttpServletRequest request) {
		try {
			System.out.println(password.getCurrentPass());
			System.out.println(password.getNewPass());
			System.out.println(password.getConfirmPass());
			System.out.println(password.getEmail());
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String ReqId = (String) request.getSession().getAttribute(
					"RequestorId");
			if (ReqId != null) {
				// ResultSet rs =
				// statement.executeQuery("select * from tempdetails where="+ReqId);
				System.out.println("inside if loop");
				String ID = (String) request.getSession().getAttribute(
						"MySessionId");
				/*
				 * ResultSet rs1 = statement
				 * .executeQuery("select * from samplevisitor where requestorId="
				 * + ID); System.out.println("Step 1"); ResultSet rs =
				 * statement.
				 * executeQuery("select * from tempdetails where requestorId="+
				 * ReqId);
				 */
				ResultSet rs = statement
						.executeQuery("select * from TempDetails where requestorId='"+ ReqId+"'");
				System.out.println("Step 2");
				// select * from samplevisitor where requestorId="+ ID
				while (rs.next()) {
					if (StringUtils.endsWithIgnoreCase(
							password.getCurrentPass(),
							rs.getString("tempPassword"))
							&& StringUtils.endsWithIgnoreCase(
									password.getNewPass(),
									password.getConfirmPass())) {
						/* query for update password here */

						int rset = statement
								.executeUpdate("INSERT INTO samplevisitor(requestorId,PASSWORD,firstName,lastName,address,phoneNo,email,loginType)VALUES('"
										+ ReqId
										+ "','"
										+ password.getNewPass()
										+ "','"
										+ rs.getString("firstName")
										+ "','"
										+ rs.getString("lastName")
										+ "','"
										+ rs.getString("address")
										+ "','"
										+ rs.getString("phoneNo")
										+ "','"
										+ rs.getString("email")
										+ "','"
										+ "VISITOR" + "')");
						/*
						 * write query for delete temp table entry where temp
						 * pass== current pass
						 */

						System.out
								.println("SUCCESSFULLY EXCUTING THE PASSWORD FLOW");
					}
				}

				/* query for delete temp data */
			}

		} catch (Exception e) {
			System.out.println("Exception " + e);
		}

		return null;
	}

	@Override
	public Register newEntryDetails(Register register,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
}
