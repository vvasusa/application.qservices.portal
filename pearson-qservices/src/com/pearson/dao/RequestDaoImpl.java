package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import com.pearson.controller.LoginController;
import com.pearson.model.AdminUser;
import com.pearson.model.RaiseRequest;
import com.pearson.model.RequestForm;

public class RequestDaoImpl implements RequestDao {

	// List<AdminUser> adminUser = new ArrayList<AdminUser>();

	@Autowired
	DataSource dataSource;

	@Autowired
	LoginController loginController;

	@Override
	public List<AdminUser> requestList(String id, HttpServletRequest request) {
		System.out.println("Request Dao" + id);
		AdminUser user = null;

		// List<AdminUser> adminUser = new ArrayList<AdminUser>();
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
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			if (id == null) {
				user = new AdminUser();
				String loginType = "null";
				user.setLoginType(loginType);
			}
			if (id != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();
				adminUser = getAdminUserFields(ses_Id, statement, request);

				// if (adminUser == null) {
				if (CollectionUtils.isEmpty(adminUser)) {
					adminUser = getRequesterFields(adminUser, statement,
							request);
				}

				// }
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminUser;
	}

	/**************** FOR DISPLAYING ALL THE REQUEST WHICH IS RAISED BY USER-START ************/

	private List<AdminUser> getAdminUserFields(String id, Statement statement,
			HttpServletRequest request) throws SQLException {
		// AdminUser user = null;

		String Table = (String) request.getSession().getAttribute("Table");
		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		// List<AdminUser> adminUser = new ArrayList<AdminUser>();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		RequestForm requestForm=null;
		try{
		ResultSet rs=null;
		if (id != null) {

			if (Table == "admin") {
				// user = new AdminUser();
				AdminUser user = null;
				String ID = (String) request.getSession().getAttribute(
						"MySessionId");
				
				if (loginType.equals("QA")) {
					String value= null;
					//rs = statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  ApprovedBy= '"+ value + "'");
					
				//	rs = statement.executeQuery("SELECT t1.RequestId, t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId, t3.Service_Id,t3.UserId	FROM request as t1	LEFT JOIN requestor as t2 	ON t1.RequestorId = t2.requestorId	LEFT JOIN service as t3	ON t1.ServiceId = t3.Service_Id  where UserId='"+ value + "'");
				
					rs = statement.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t1.LastUpdatedOn FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id  where ApprovedBy='"+ value + "' order by date desc" );
				}
				
				if (loginType.equals("PL")) {
					String value ="QA";
				
					//rs = statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  ApprovedBy= '"+ value + "'");
					rs = statement.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t1.LastUpdatedOn FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id  where ApprovedBy='"+ value + "'");
				}
				if (loginType.equals("SLM")) {
					String value ="PL";
					
				//	rs = statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  ApprovedBy= '"+ value + "'");
					rs = statement.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t1.LastUpdatedOn FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id  where ApprovedBy='"+ value + "'");
				}
				if (loginType.equals("ADM")) {
					String value ="SLM";
					// rs = statement.executeQuery("select * from request where ApprovedBy ='"+ value + "'");
					//rs = statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  ApprovedBy= '"+ value + "'");
					rs = statement.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t1.LastUpdatedOn FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id  where ApprovedBy='"+ value + "'");
				}

				
				
				
				
				while (rs.next()) {
					user = new AdminUser();
					requestForm =new RequestForm();
					// String str1=(rs.getString(1));
					// user.setUserId("userId");
					/*
					 * user.setLoginType(rs.getString("loginType"));
					 * user.setFirstName(rs.getString("firstName"));
					 * user.setLastName(rs.getString("lastName"));
					 * user.setPhoneNo(rs.getString("phoneNo"));
					 * user.setEmail(rs.getString("email")); String userId =
					 * rs.getString("userId"); user.setUserId(userId); //
					 * user.setLocation(rs.getString("location"));
					 * user.setAddress(rs.getString("address"));
					 * user.setEmail(rs.getString("email"));
					 */
					String ses_Type = (String) request.getSession()
							.getAttribute("loginType");
					if (!(rs.getString("ApprovedBy").equalsIgnoreCase(ses_Type))) {
						user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
						user.setRequestorId(rs.getString("RequestorId"));
						user.setApprovedBy(rs.getString("ApprovedBy"));
						user.setRaisedReqId(rs.getString("RequestId"));
						user.setStatus_Id(rs.getString("Status_Id"));
						user.setFirstName(rs.getString("firstName"));
						user.setServiceId(rs.getString("ServiceId"));
						user.setLastName(rs.getString("lastName"));
						user.setDesc(rs.getString("descreption"));
						user.setPhoneNo(rs.getString("phoneNo"));
						user.setUserId(rs.getString("UserId"));
						user.setEmail(rs.getString("email"));
						user.setDate(rs.getString("Date"));
						adminUser.add(user);
						
					}
				}
			}

		}
		}

catch(Exception e){System.out.println( e);}
		return adminUser;
		
	}

	/*********************** FOR DISPLAYING ALL THE REQUEST WHICH IS RAISED BY USER-END ***********************/

	/*********************** DISPLAYING EDIT ALL THE DETAILS ABOUT PARTICULAR USER-START ***************************/

	private List<AdminUser> getRequesterFields(List<AdminUser> adminuser,
			Statement statement, HttpServletRequest request)
			throws SQLException {

		String Table = (String) request.getSession().getAttribute("Table");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		if (Table == "requestor") {
			// ResultSet rs = statement.executeQuery("select * from Requestor");
			String ID = (String) request.getSession().getAttribute(
					"MySessionId");
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
					user.setAddress(rs.getString("address"));

					adminUser.add(user);

				}
			}// return adminUser;

		}
		return adminUser;
	}

	/************** DISPLAYING ALL THE DETAILS ABOUT PARTICULAR USER-END **********************/

	@Override
	public void requestList() {
		// TODO Auto-generated method stub

		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select *from admin1");
			while (rs.next()) {
				// String str1=(rs.getString(1));
				String username = (rs.getString("userId"));
				String password = (rs.getString("password"));
				System.out.println("FROM DATABASE userId " + username);
				System.out.println("FROM DATABASE userId " + password);
				// Object ses_valu=session.setAttribute(h,uname);
				// System.out.println(ses_valu);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Request controller");
	}

	@Override
	public List<AdminUser> updateDetails(RequestForm requestForm,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		AdminUser user = null;
		// AdminUser user = new AdminUser();

		user = new AdminUser();
		HttpSession session = request.getSession();
		//String id = (String) session.getAttribute("MySessionVariable");
		String id = (String) request.getSession().getAttribute(
				"MySessionId");
		String email = (String) session.getAttribute("email");
		System.out.println("from request controller Update details" + email);
		try {

			if (id != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();
				
				statement.executeUpdate("update requestor SET address = '"
						+ requestForm.getAddress() + "',phoneNo = '" + requestForm.getPhoneNo()
						+ "',email = '" + requestForm.getEmail()
						+ "' where requestorId ='" + id + "'");
				
				ResultSet rs = statement
						.executeQuery("select * from requestor where requestorId="
								+ id);
				

				while (rs.next()) {

					/*user.setFirstName(requestForm.getFirstName());
					user.setLastName(requestForm.getLastName());
					user.setEmail(requestForm.getEmail());
					user.setPhoneNo(requestForm.getPhoneNo());
					user.setAddress(requestForm.getAddress());*/
					// user.setRequestId(requestForm.getRequestId());
					// user.setRequestName(requestForm.getRequestName());
					
					user.setFirstName(rs.getString("firstName"));
					user.setLastName(rs.getString("lastName"));
					user.setEmail(requestForm.getEmail());
					user.setPhoneNo(requestForm.getPhoneNo());
					user.setAddress(requestForm.getAddress());
					
					adminUser.add(user);
					
					System.out.println("inside update details..."
							+ requestForm.getEmail());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminUser;
	}

	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- START */
	@Override
	public String approveRequest(String id) {
		// TODO Auto-generated method stub

		return "welcome to approve";
	}

	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- end */

	@Override
	public List<AdminUser> UserRequestList(String id, RequestForm requestForm,
			HttpServletRequest request) {
		// String Table = (String) request.getSession().getAttribute("My");
		List<AdminUser> adminUser = new ArrayList<AdminUser>();

		try {
			// requestForm.getService();
			// requestForm.getServiceID();
			String ID = (String) request.getSession().getAttribute(
					"MySessionId");
			if (ID != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement
						.executeQuery("select * from REQUEST where requestorId="
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
									ses_Type)) {
						/*
						 * String str1=(rs.getString(1)); String Req_Fname =
						 * (rs.getString("firstName")); String Req_Lname =
						 * (rs.getString("lastName")); String Email =
						 * (rs.getString("email")); String PhoneNo =
						 * (rs.getString("phoneNo")); String loginType =
						 * (rs.getString("loginType")); String requestorId =
						 * rs.getString("requestorId");
						 * user.setUserId(requestorId); //
						 * user.setUserId("requestorId");
						 * user.setFirstName(Req_Fname);
						 * user.setLastName(Req_Lname); user.setEmail(Email);
						 * user.setPhoneNo(PhoneNo);
						 * user.setLoginType(loginType); adminUser.add(user);
						 */

						user.setApprovedBy(rs.getString("ApprovedBy"));
						user.setRequestorId(rs.getString("RequestorId"));
						user.setStatus_Id(rs.getString("Status_Id"));
						user.setRequestID(rs.getString("RequestId"));
						user.setRaisedDate(rs.getString("Date"));
						user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
						user.setServiceId(rs.getString("ServiceId"));
						adminUser.add(user);

					}
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;
	}

}
