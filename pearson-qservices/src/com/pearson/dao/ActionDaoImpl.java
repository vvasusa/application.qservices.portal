package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;

import com.Constants;
import com.pearson.controller.ActionController;
import com.pearson.controller.MailService;
import com.pearson.model.AdminUser;
import com.pearson.model.Password;
import com.pearson.model.Register;
import com.pearson.model.RequestForm;
import com.pearson.model.ServiceIntro;
import com.pearson.services.JavaMailService;

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
	GentrateUserId obj = new GentrateUserId();

	@Override
	public List<AdminUser> approveRequest(String requestId,
			HttpServletRequest request, RequestForm requestForm) {

		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		System.out.println(loginType);

		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();
		String Date=Dt.toString();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {
			String action = Constants.APPROVED;
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = null;
			
			
			javaMailService.sendEmail();

			String id = (String) request.getSession().getAttribute(
					"MySessionId");

			String commands = requestForm.getCommands();

			String Access = Constants.LEVEL_1;

			if (loginType.equals("QA")) {

				String value = loginType;
				String approve = "ApprovedBy QA";
				int sts = 1;
				int sts1 = Constants.STATUS_TWO;

				try {
					statement.executeUpdate("update REQUEST SET ApprovedBy = '"
							+ approve + "',QAactionDate = '" + Date + "',commandsByQA = '"
							+ commands + "',commandsByPL = '" + "OPEN"
							+ "',commandsBySLM = '" + "OPEN"
							+ "',commandsByADM = '" + "OPEN" + "',actionQA = '"
							+ action + "',Status_id = '" + sts
							+ "',LastUpdatedOn = '" + Date 
						+ "' where RequestId ='" + requestId + "'");

					rs = statement
							.executeQuery("SELECT RequestId,RequestorId,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where ApprovedBy='"
									+ approve + "'");
				} catch (Exception e) {
					System.out.println(e);
				}

			}

			else if (loginType.equals("PL")) {
				String value = loginType;
				String approve = "ApprovedBy PL";
				int sts = 3;
				
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ approve + "',Status_id = '" + sts
						+ "',PLactionDate = '" + Date + "',commandsByPL = '"
						+ commands + "',actionPL = '" + action
						+ "',LastUpdatedOn = '" + Date + "' where RequestId ='"
						+ requestId + "'");

				/*
				 * rs = statement
				 * .executeQuery("select * from request where ApprovedBy ='"+
				 * value + "'");
				 */
				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where ApprovedBy='"
								+ approve + "'");
			}

			else if (loginType.equals("SLM")) {
				String approve = "ApprovedBy SLM";
				int sts = 5;
				String value = loginType;
				/*
				 * statement.executeUpdate("update REQUEST SET ApprovedBy = '" +
				 * approve + "',Status_id = '" + sts + "',commandsBySLM = '" +
				 * commands + "',LastUpdatedOn = '" + Dt +
				 * "' where RequestId ='" + requestId + "'");
				 */
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ approve + "',Status_id = '" + sts
						+ "',SLMactionDate = '" + Date + "',commandsBySLM = '"
						+ commands + "',actionSLM = '" + action
						+ "',LastUpdatedOn = '" + Date + "' where RequestId ='"
						+ requestId + "'");

				/*
				 * rs = statement
				 * .executeQuery("select * from request where ApprovedBy ='"+
				 * value + "'");
				 */
				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where ApprovedBy='"
								+ approve + "'");
			}

			else if (loginType.equals("ADM")) {
				String approve = "ApprovedBy ADM";
				int sts = 11;
				String value = "ADM";
				/*
				 * statement.executeUpdate("update REQUEST SET ApprovedBy = '" +
				 * approve + "',Status_id = '" + sts + "',commandsByADM = '" +
				 * commands + "',LastUpdatedOn = '" + Dt +
				 * "' where RequestId ='" + requestId + "'");
				 */
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ approve + "',Status_id = '" + sts
						+ "',ADMactionDate = '" + Date + "',commandsByADM = '"
						+ commands + "',actionADM = '" + action
						+ "',LastUpdatedOn = '" + Date + "' where RequestId ='"
						+ requestId + "'");

				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where ApprovedBy='"
								+ approve + "'");
			} else {
			}
			while (rs.next()) {
				user = new AdminUser();
				// rs.getString(rs.get)
				/*
				 * String value = rs.getString("loginType");
				 * System.out.println(value);
				 * user.setLoginType(rs.getString("loginType"));
				 * user.setEmail(rs.getString("email"));
				 * user.setFirstName(rs.getString("firstName"));
				 * user.setLastName(rs.getString("lastName"));
				 * user.setPhoneNo(rs.getString("phoneNo"));
				 */
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				// user.setLastUpdatedOn(Dt.toString());
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setServiceName(rs.getString("Service_Name"));
				user.setCommandsByPL(rs.getString("commandsByPL"));
				user.setCommandsByQA(rs.getString("commandsByQA"));
				user.setCommandsBySLM(rs.getString("commandsBySLM"));
				user.setCommandsByADM(rs.getString("commandsByADM"));
				adminUser.add(user);
			}

		}

		catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;
	}

	@Override
	public Register newRegistrationDetails(Register register,
			HttpServletRequest request) {
		try {

			MailService mailService = new MailService();

			GentrateUserId Obj = new GentrateUserId();
			StringBuilder requestorID = Obj.getUniqueID();
			String tempPass = Obj.getPassword();
			System.out.println("**********************" + Obj.getUniqueID());
			System.out.println("**********************"
					+ requestorID.toString());

			String firstName = register.getFirstName();
			String lastName = register.getLastName();
			String email = register.getEmail();
			String phone = register.getPhoneNo();

			StringBuilder address = new StringBuilder();

			address = address.append(register.getAddress1())
					.append(register.getAddress2())
					.append(register.getAddress3())
					.append(register.getAddress4());

			// System.out.println("UNIQUE ID  " + requestorID.toString());
			System.out.println("Temp pass  " + tempPass);
			register.setTempPass(tempPass);
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
							+ address
							+ "','" + phone + "','" + email + "')");

		} catch (Exception e) {

			System.out.println(e);
		}
		return register;
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
			String ReqId = (String) request.getSession()
					.getAttribute("RequestorId").toString();
			if (ReqId != null) {
				String ID = (String) request.getSession().getAttribute(
						"MySessionId");
				ResultSet rs = statement
						.executeQuery("select * from TempDetails where requestorId='"
								+ ReqId + "'");
				while (rs.next()) {
					if (StringUtils.endsWithIgnoreCase(
							password.getCurrentPass(),
							rs.getString("tempPassword"))
							&& StringUtils.endsWithIgnoreCase(
									password.getNewPass(),
									password.getConfirmPass())) {
						/* query for update password here */
						Connection connection1 = dataSource.getConnection();
						Statement statement1 = connection1.createStatement();
						int rs1 = statement1
								.executeUpdate("INSERT INTO REQUESTOR(requestorId,PASSWORD,firstName,lastName,address,phoneNo,email,loginType)VALUES('"
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

						System.out
								.println("SUCCESSFULLY EXCUTING THE PASSWORD FLOW");

						password.setFirstName(rs.getString("firstName"));
						password.setEmail(rs.getString("email"));
						password.setLastName(rs.getString("lastName"));
						password.setPhoneNo(rs.getString("phoneNo"));
						password.setAddress(rs.getString("address"));

					}
				}

				/* query for delete temp data */
			}

		} catch (Exception e) {
			System.out.println("Exception " + e);
		}

		return password;
	}

	@Override
	public Register newEntryDetails(Register register,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AdminUser> rejectrequest(String id, HttpServletRequest request,
			RequestForm requestForm) {

		AdminUser user = null;
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {
			String loginType = (String) request.getSession().getAttribute(
					"loginType");
			System.out.println(loginType);

			Timestamp Dt = obj.dateAndTime();
			String action = Constants.REJECTED;
			// action = action.concat("-"+Constants.REJECTED);
			System.out.println(action);

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			/* UPDATE QUERY FOR APPROVED REQUEST ID */
			ResultSet rs = null;

			String uid = (String) request.getSession().getAttribute(
					"MySessionId");
			String commands = requestForm.getCommands();

			if (loginType.equals("QA")) {

				/******
				 * WRITE QUERY FOR TABLE WHERE STATUS APPROVED BY QA, WHERE
				 * STATUS =="APPROVED BY QA"
				 *********/
				String value = "REJECTED BY QA";
				int sts = 2;

				try {

					statement.executeUpdate("update REQUEST SET RejectedBy = '"
							+ value + "',Status_id = '" + sts
							+ "',actionQA = '" + action + "',QAactionDate = '"
							+ Dt + "',commandsByQA = '" + commands
							+ "',commandsByPL = '" + "CLOSED"
							+ "',commandsBySLM = '" + "CLOSED"
							+ "',commandsByADM = '" + "CLOSED"
							+ "',LastUpdatedOn = '" + Dt
							+ "' where RequestId ='" + id + "'");

					/*
					 * rs = statement .executeQuery(
					 * "select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
					 * + Status + "'");
					 */
					rs = statement
							.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc,t1.commandsByQA,t1.commandsByPL,t1.commandsBySLM,t1.commandsByADM FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where REJECTEDBY='"
									+ value + "'");
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			else if (loginType.equals("PL")) {
				String value = "REJECTED BY PL";
				int sts = 4;

				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts + "',actionPL = '"
						+ action + "',PLactionDate = '" + Dt
						+ "',commandsByPL = '" + commands
						+ "',LastUpdatedOn = '" + Dt 
						+ "' where RequestId ='"+ id + "'");

				/*
				 * rs = statement .executeQuery(
				 * "select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
				 * + Status + "'");
				 */
				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc,t1.commandsByQA,t1.commandsByPL,t1.commandsBySLM,t1.commandsByADM FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where REJECTEDBY='"
								+ value + "'");
			}

			else if (loginType.equals("SLM")) {
				int sts = 6;
				String value = " REJECTED BY SLM";
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',SLMactionDate = '" + Dt + "',commandsBySLM = '"
						+ commands + "',actionSLM = '" + action
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");

				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc,t1.commandsByQA,t1.commandsByPL,t1.commandsBySLM,t1.commandsByADM FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where REJECTEDBY='"
								+ value + "'");
			}

			else if (loginType.equals("ADM")) {
				int sts = 11;
				String value = " REJECTED BY ADM";
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',ADMactionDate = '" + Dt + "',commandsByADM = '"
						+ commands + "',actionADM = '" + action
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");

				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc,t1.commandsByQA,t1.commandsByPL,t1.commandsBySLM,t1.commandsByADM FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where REJECTEDBY='"
								+ value + "'");
			}

			else {
			}
			while (rs.next()) {
				user = new AdminUser();

				user.setRejectedBy(rs.getString("RejectedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setServiceName(rs.getString("Service_Name"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setRequestorId(rs.getString("RequestorId"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setDate(rs.getString("Request_Date"));
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setStatus(rs.getString("StatusDesc"));
				user.setUserId(rs.getString("UserId"));
				user.setCommandsByPL(rs.getString("commandsByPL"));
				user.setCommandsByQA(rs.getString("commandsByQA"));
				user.setCommandsBySLM(rs.getString("commandsBySLM"));
				user.setCommandsByADM(rs.getString("commandsByADM"));

				adminUser.add(user);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;
	}

	@Override
	public List<AdminUser> viewAllRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub

		String loginType = (String) request.getSession().getAttribute(
				"loginType");

		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();

			ResultSet rs = null;

			String uid = (String) request.getSession().getAttribute(
					"MySessionId");

			// rs =
			// statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req LEFT OUTER JOIN requestor AS restr on req.RequestorId=restr.requestorId");
			// rs =
			// statement.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t1.descreption,t3.Service_Name FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id");
			rs = statement
					.executeQuery("SELECT t1.RequestId,t1.descreption, t1.ApprovedBy,t1.RejectedBy,t1.commandsByQA,t1.commandsByPL,t1.commandsBySLM,t1.commandsByADM,t1.RequestorId, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.UserId,t1.Status_Id,t4.StatusDesc,t1.LastUpdatedOn,t1.descreption,t3.Service_Name FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id LEFT JOIN status as t4 ON t4.StatusId = t1.Status_Id");

			while (rs.next()) {
				user = new AdminUser();
				user.setApprovedBy(rs.getString("RejectedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setStatus(rs.getString("StatusDesc"));
				user.setRequestName(rs.getString("Service_Name"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setRequestorId(rs.getString("RequestorId"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setLastUpdatedOn(rs.getString("Request_Date"));
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setCommandsByPL(rs.getString("commandsByPL"));
				user.setCommandsByQA(rs.getString("commandsByQA"));
				user.setCommandsBySLM(rs.getString("commandsBySLM"));
				user.setCommandsByADM(rs.getString("commandsByADM"));

				adminUser.add(user);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;
	}

	@Override
	public ServiceIntro getAllServiceIntro() {
		// TODO Auto-generated method stub

		ServiceIntro serviceIntro = null;
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = null;
			rs = statement.executeQuery("select * from service");
			String[] row = new String[16];
			serviceIntro = new ServiceIntro();
			boolean j;
			for (int i = 0; j = rs.next(); i++) {
				row[i] = rs.getObject(3).toString();
				System.out.println(row[i]);
			}
			serviceIntro.setAutomation(row[0]);
			serviceIntro.setCloud(row[1]);
			serviceIntro.setCompliance(row[2]);
			serviceIntro.setCrm(row[3]);
			serviceIntro.setData(row[4]);
			serviceIntro.setEnvironment(row[5]);
			serviceIntro.setErp(row[6]);
			serviceIntro.setInfrastructure(row[7]);
			serviceIntro.setMiddleware(row[8]);
			serviceIntro.setMobile(row[9]);
			serviceIntro.setOnline(row[10]);
			serviceIntro.setPerformance(row[11]);
			serviceIntro.setQaprogram(row[12]);
			serviceIntro.setQuality(row[13]);
			serviceIntro.setSecurity(row[14]);
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return serviceIntro;
	}

	@Override
	public List<AdminUser> MyApproveRequest(String requestId,
			HttpServletRequest request, RequestForm requestForm) {
		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		System.out.println(loginType);

		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();

		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = null;
			String id = (String) request.getSession().getAttribute(
					"MySessionId");
			String commands = requestForm.getCommands();
			String Access = Constants.LEVEL_1;
			if (loginType.equals("QA")) {

				String value = loginType;
				/* String approve ="ApprovedBy QA"; */

				/****************
				 * 7/7/2014 change in approvedByQA value to Approved in db
				 * actionQa column
				 *****************/
				String approve = Constants.APPROVED;
				int sts = 1;
				try {

					// statement.executeUpdate("update REQUEST SET ApprovedBy = '"
					// + approve + "',Status_id = '" + sts +
					// "',commandsByQA = '" + commands + "',commandsByPL = '" +
					// "OPEN" + "',commandsBySLM = '" + "OPEN" +
					// "',commandsByADM = '" + "OPEN" + "',LastUpdatedOn = '" +
					// Dt + "' where RequestId ='" + requestId + "'");
					rs = statement
							.executeQuery("SELECT RequestId,RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where actionQA='"
									+ approve + "'");
				} catch (Exception e) {
					System.out.println(e);
				}

			}

			else if (loginType.equals("PL")) {
				String value = loginType;
				/* String approve ="ApprovedBy PL"; */
				String approve = Constants.APPROVED;
				int sts = 3;
				// statement.executeUpdate("update REQUEST SET ApprovedBy = '" +
				// approve + "',Status_id = '" + sts + "',commandsByPL = '" +
				// commands + "',LastUpdatedOn = '" + Dt+ "' where RequestId ='"
				// + requestId + "'");
				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where actionPL='"
								+ approve + "'");
			}

			else if (loginType.equals("SLM")) {
				/* String approve ="ApprovedBy SLM"; */
				String approve = Constants.APPROVED;
				int sts = 5;
				String value = loginType;
				// statement.executeUpdate("update REQUEST SET ApprovedBy = '" +
				// approve + "',Status_id = '" + sts + "',commandsBySLM = '" +
				// commands + "',LastUpdatedOn = '" + Dt+ "' where RequestId ='"
				// + requestId + "'");
				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where actionSLM='"
								+ approve + "'");
			}

			else if (loginType.equals("ADM")) {
				/* String approve ="ApprovedBy ADM"; */
				String approve = Constants.APPROVED;
				int sts = 11;
				String value = "ADM";
				// statement.executeUpdate("update REQUEST SET ApprovedBy = '" +
				// approve + "',Status_id = '" + sts + "',commandsByADM = '" +
				// commands + "',LastUpdatedOn = '" + Dt+ "' where RequestId ='"
				// + requestId + "'");
				rs = statement
						.executeQuery("SELECT RequestId,RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,Request_Date,ApprovedBy,Status_Id,LastUpdatedOn,RejectedBy,descreption,commandsByQA,commandsByPL,commandsBySLM,commandsByADM,ServiceId,Service_Id,Service_Name,Service_Intro,UserId,Location_Id	FROM request	LEFT JOIN service	ON request.ServiceId=service.Service_Id	where actionADM='"
								+ approve + "'");

			}

			else {
			}
			while (rs.next()) {
				user = new AdminUser();

				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setServiceName(rs.getString("Service_Name"));
				user.setCommandsByQA(rs.getString("commandsByQA"));
				user.setCommandsByPL(rs.getString("commandsByPL"));
				user.setCommandsBySLM(rs.getString("commandsBySLM"));
				user.setCommandsByADM(rs.getString("commandsByADM"));
				if (loginType.equals("QA")) {
					user.setLastUpdatedOn(rs.getString("QAactionDate"));
				}
				if (loginType.equals("PL")) {
					user.setLastUpdatedOn(rs.getString("PLactionDate"));
				}
				if (loginType.equals("SLM")) {
					user.setLastUpdatedOn(rs.getString("SLMactionDate"));
				}
				if (loginType.equals("ADM")) {
					user.setLastUpdatedOn(rs.getString("ADMactionDate"));
				}
				adminUser.add(user);

			}

		}

		catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;

	}

	@Override
	public List<AdminUser> myRejectrequest(String id, HttpServletRequest request) {

		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			/* UPDATE QUERY FOR APPROVED REQUEST ID */
			ResultSet rs = null;
			String uid = (String) request.getSession().getAttribute(
					"MySessionId");

			if (loginType.equals("QA")) {

				/******
				 * WRITE QUERY FOR TABLE WHERE STATUS APPROVED BY QA, WHERE
				 * STATUS =="APPROVED BY QA"
				 *********/
				/* String value = "REJECTED BY QA"; */
				String value = Constants.REJECTED;
				int sts = 2;

				try {

					// statement.executeUpdate("update REQUEST SET RejectedBy = '"
					// + value + "',Status_id = '" + sts + "',ApprovedBy = '" +
					// "-" + "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
					// + id + "'");
					/*
					 * rs = statement .executeQuery(
					 * "select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
					 * + Status + "'");
					 */
					rs = statement
							.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo,commandsByQA,commandsByPL,commandsBySLM,commandsByADM, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where actionQA='"
									+ value + "'");
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			else if (loginType.equals("PL")) {
				/* String value = "REJECTED BY PL"; */
				String value = Constants.REJECTED;
				int sts = 4;

				// statement.executeUpdate("update REQUEST SET RejectedBy = '" +
				// value + "',Status_id = '" + sts + "',LastUpdatedOn = '" + Dt
				// + "' where RequestId ='"+ id + "'");
				// rs =
				// statement.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
				// + value + "'");
				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate, t1.Request_Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, commandsByQA,commandsByPL,commandsBySLM,commandsByADM,t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where actionPL='"
								+ value + "'");
			}

			else if (loginType.equals("SLM")) {
				int sts = 6;
				/* String value = " REJECTED BY SLM"; */
				String value = Constants.REJECTED;
				// statement.executeUpdate("update REQUEST SET RejectedBy = '" +
				// value + "',Status_id = '" + sts + "',LastUpdatedOn = '" + Dt
				// + "' where RequestId ='"+ id + "'");
				// rs =
				// statement.executeQuery("select * from request where RejectedBy ='"+
				// value + "'");
				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId,QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,t1.Request_Date,commandsByQA,commandsByPL,commandsBySLM,commandsByADM, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where actionSLM='"
								+ value + "'");
			}

			else if (loginType.equals("ADM")) {
				int sts = 11;
				/* String value = " REJECTED BY ADM"; */
				String value = Constants.REJECTED;
				// statement.executeUpdate("update REQUEST SET RejectedBy = '" +
				// value + "',Status_id = '" + sts+ "',LastUpdatedOn = '" + Dt +
				// "' where RequestId ='"+ id + "'");
				// rs =
				// statement.executeQuery("select * from request where RejectedBy ='"
				// + value + "'");
				// rs = statement
				// .executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, t1.Date, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where REJECTEDBY='"
				// +value+"'");
				rs = statement
						.executeQuery("SELECT t1.RequestId,t1.descreption,t1.ApprovedBy,t1.RejectedBy,t1.RequestorId, QAactionDate,PLactionDate,SLMactionDate,ADMactionDate,t1.Request_Date,commandsByQA,commandsByPL,commandsBySLM,commandsByADM, t2.firstName,t2.lastName, t2.email, t2.phoneNo, t1.ServiceId,t3.Service_Name,t3.UserId,t1.Status_Id,t1.LastUpdatedOn,t4.StatusDesc FROM request as t1 LEFT JOIN requestor as t2 ON t1.RequestorId = t2.requestorId LEFT JOIN service as t3 ON t1.ServiceId = t3.Service_Id INNER JOIN status as t4 ON t1.Status_Id = t4.StatusId where actionADM='"
								+ value + "'");
			}

			else {
			}
			while (rs.next()) {
				user = new AdminUser();
				user.setRejectedBy(rs.getString("RejectedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setServiceName(rs.getString("Service_Name"));
				user.setRaisedReqId(rs.getString("RequestId"));
				user.setRequestorId(rs.getString("RequestorId"));
				user.setServiceId(rs.getString("ServiceId"));
				user.setDate(rs.getString("Request_Date"));
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setStatus(rs.getString("StatusDesc"));
				user.setUserId(rs.getString("UserId"));
				user.setCommandsByQA(rs.getString("commandsByQA"));
				user.setCommandsByPL(rs.getString("commandsByPL"));
				user.setCommandsBySLM(rs.getString("commandsBySLM"));
				user.setCommandsByADM(rs.getString("commandsByADM"));
				
				if (loginType.equals("QA")) {
					user.setLastUpdatedOn(rs.getString("QAactionDate"));
				}
				if (loginType.equals("PL")) {
					user.setLastUpdatedOn(rs.getString("PLactionDate"));
				}
				if (loginType.equals("SLM")) {
					user.setLastUpdatedOn(rs.getString("SLMactionDate"));
				}
				if (loginType.equals("ADM")) {
					user.setLastUpdatedOn(rs.getString("ADMactionDate"));
				}
				adminUser.add(user);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return adminUser;
	}

}
