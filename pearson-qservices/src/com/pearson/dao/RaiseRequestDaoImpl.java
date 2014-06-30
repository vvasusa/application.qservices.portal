package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.pearson.controller.MailService;
import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;
import com.pearson.model.RequestForm;

public class RaiseRequestDaoImpl implements RaiseRequestDao {

	@Autowired
	DataSource dataSource;

	@Override
	public List<AdminUser> newRequestService(String id,
			RaiseRequest raiseRequest, HttpServletRequest request) {
		// String Table = (String) request.getSession().getAttribute("My");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();

		try {
			raiseRequest.getService();
			raiseRequest.getServiceID();
			String ID = (String) request.getSession().getAttribute(
					"MySessionId");
			if (ID != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement
						.executeQuery("select * from REQUESTOR where requestorId="
								+ ID);

				/* (SELECT * FROM adminuser where userId="+"id) */
				/* ("select * from samplevisitor where requestorId= :ID") */

				AdminUser user = null;
				// AdminUser user = new AdminUser();
				while (rs.next()) {
					user = new AdminUser();
					String ses_Id = (String) request.getSession().getAttribute(
							"MySessionId");
					String ses_Type = (String) request.getSession()
							.getAttribute("loginType");
					String ses_Table = (String) request.getSession()
							.getAttribute("Table");
					System.out
							.println("session value in request list controller"
									+ ses_Id);
					System.out
							.println("session value in request list controller"
									+ ses_Type);

					if (StringUtils.endsWithIgnoreCase(ses_Id,
							rs.getString("requestorId"))
							&& StringUtils.endsWithIgnoreCase(ses_Type,
									rs.getString("loginType"))) {

						// String str1=(rs.getString(1));
						String Req_Fname = (rs.getString("firstName"));
						String Req_Lname = (rs.getString("lastName"));
						String Email = (rs.getString("email"));
						String PhoneNo = (rs.getString("phoneNo"));
						String loginType = (rs.getString("loginType"));
						String requestorId = rs.getString("requestorId");
						user.setUserId(requestorId);
						// user.setUserId("requestorId");
						user.setFirstName(Req_Fname);
						user.setLastName(Req_Lname);
						user.setEmail(Email);
						user.setPhoneNo(PhoneNo);
						user.setLoginType(loginType);
						user.setRequestID(raiseRequest.getServiceID());
						user.setRequestName(raiseRequest.getService());
						adminUser.add(user);

					}
				}
			}
		} catch (Exception e) {
		}
		return adminUser;

	}

	@Override
	public List<AdminUser> newRequestServiceFinal(String id,
			RequestForm requestForm, HttpServletRequest request) {
		// TODO Auto-generated method stub
		String pn = requestForm.getPhoneNo();
		String sid = requestForm.getReq_ServiceID();
		String Reqname = requestForm.getReq_ServiceName();
		
		System.out.println(pn);
		System.out.println(sid);

		/* Send request id to user via mail */
		GentrateUserId Obj = new GentrateUserId();
		String reqid = Obj.getRequestID();
		Obj.getPassword();
		Timestamp date = Obj.dateAndTime();
		System.out.println(reqid);

		/******* UPDATE QUERY FOR NEW ENTRY DETAILS IN DB **********/
		/*
		 * request.getSession(true).setAttribute("RequestorId",reqid);
		 * request.getSession(true).setAttribute("TempPass",Obj.getPassword());
		 */
		String ses_Id = (String) request.getSession().getAttribute(
				"MySessionId");
		String ses_Type = (String) request.getSession().getAttribute(
				"loginType");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		AdminUser user = null;
		user = new AdminUser();
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();

			

			int rs = statement
					.executeUpdate("INSERT INTO REQUEST(RequestId,RequestorId,ServiceId,Date,descreption,ApprovedBy,Status_Id,LastUpdatedOn)VALUES('"
							+ reqid
							+ "','"
							+ ses_Id
							+ "','"
							+ sid
							+ "','"
							+ date
							+ "','"
							+ requestForm.getCommands()
							+ "','"
							+ "null"
							+ "','"
							+ "0"
							+ "','"
							+ date + "')");

			/*
			 * int rs = statement .executeUpdate(
			 * "INSERT INTO TempInsert(requestorId,requestId,firstName,lastName,email,phoneNo,address)VALUES('"
			 * + reqid + "','" + requestForm.getReq_ServiceID() + "','" +
			 * requestForm.getFirstName() + "','" + requestForm.getLastName() +
			 * "','" + requestForm.getEmail() + "','" + requestForm.getPhoneNo()
			 * + "','" + reqid + "')");
			 */
			
			
			String name = requestForm.getFirstName();
			name = name.concat(requestForm.getLastName());
		      
		      
			user.setFirstName(name);
			user.setEmail(requestForm.getEmail());
			user.setLastName(requestForm.getLastName());
			user.setPhoneNo(requestForm.getPhoneNo());
			user.setRequestID(requestForm.getReq_ServiceID());
			user.setRequestName(requestForm.getReq_ServiceName());
			user.setAddress(requestForm.getAddress());
			
			user.setRequestID(reqid);
			adminUser.add(user);

			/**************** Send request id to user via mail ************/
			MailService mailService = new MailService();

			// mailService.sendRequestID(requestForm.getEmail(), reqid);

		} catch (Exception e) {
			System.out.println(e);
		}

		return adminUser;
	}

}
