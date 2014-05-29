package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;

public class RaiseRequestDaoImpl implements RaiseRequestDao {

	@Autowired
	DataSource dataSource;

	@Override
	public List<AdminUser> newRequestService(String id,
			RaiseRequest raiseRequest, HttpServletRequest request) {
		//String Table = (String) request.getSession().getAttribute("My");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();

		try {
			raiseRequest.getService();
			raiseRequest.getServiceID();
			String ID = (String) request.getSession().getAttribute(
					"MySessionId");
			if(ID!=null){
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement
					.executeQuery("select * from samplevisitor where requestorId="
							+ ID);

			/* (SELECT * FROM adminuser where userId="+"id) */
			/* ("select * from samplevisitor where requestorId= :ID") */

			AdminUser user = null;
			// AdminUser user = new AdminUser();
			while (rs.next()) {
				user = new AdminUser();
				String ses_Id = (String) request.getSession().getAttribute(
						"MySessionId");
				String ses_Type = (String) request.getSession().getAttribute(
						"loginType");
				String ses_Table = (String) request.getSession().getAttribute(
						"Table");
				System.out.println("session value in request list controller"
						+ ses_Id);
				System.out.println("session value in request list controller"
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
					adminUser.add(user);

				}
			}
			}
		} catch (Exception e) {
		}
		return adminUser;
	}

}
