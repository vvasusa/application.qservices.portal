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
			HttpServletRequest request) {

		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		System.out.println(loginType);

		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			/* UPDATE QUERY FOR APPROVED REQUEST ID */
			ResultSet rs = null;
			// javaMailService.sendEmail();
			String id = (String) request.getSession().getAttribute(
					"MySessionId");

			if (loginType.equals("QA")) {

				/******
				 * WRITE QUERY FOR TABLE WHERE STATUS APPROVED BY QA, WHERE
				 * STATUS =="APPROVED BY QA"
				 *********/
				String value = "QA";
				int sts = 2;
				try {
					/*
					 * statement.executeUpdate("update REQUEST SET ApprovedBy = '"
					 * + value + "',Status_id = '"+ sts +
					 * "', where requestId = '" + requestId + "'");
					 */

					statement.executeUpdate("update REQUEST SET ApprovedBy = '"
							+ value + "',Status_id = '" + sts
							+ "',LastUpdatedOn = '" + Dt
							+ "' where RequestId ='" + requestId + "'");

					// update REQUEST SET ApprovedBy = "QLEAD",Status_id = "2"
					// where requestID = "2COXMP92TX";

					// statement.executeQuery("update tempinsert SET status = '"+
					// value+ "' where requestID = '"+ id + "'");

					/******
					 * WRITE QUERY UPDATE TABLE- COLUMN APPROVED BY
					 * =="APPROVED BY QA"
					 *********/
					rs = statement
							.executeQuery("select * from request where ApprovedBy ='"
									+ value + "'");
				} catch (Exception e) {
					System.out.println(e);
				}

			}

			else if (loginType.equals("PL")) {
				String value = "PL";
				int sts = 3;
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ requestId + "'");
				rs = statement
						.executeQuery("select * from request where ApprovedBy ='"
								+ value + "'");
			}

			else if (loginType.equals("SLM")) {
				int sts = 3;
				String value = "SLM";
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ requestId + "'");
				rs = statement
						.executeQuery("select * from request where ApprovedBy ='"
								+ value + "'");
			}

			else if (loginType.equals("ADM")) {
				int sts = 3;
				String value = "ADM";
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ requestId + "'");
				rs = statement
						.executeQuery("select * from request where ApprovedBy ='"
								+ value + "'");

			} else if (loginType.equals("")) {
				int sts = 3;
				String value = "ADM";
				statement.executeUpdate("update REQUEST SET ApprovedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ requestId + "'");
				rs = statement
						.executeQuery("select * from request where ApprovedBy ='"
								+ value + "'");

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

				adminUser.add(user);
				System.out.println("inside rs");

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
			String address = register.getAddress1();

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
	public List<AdminUser> rejectrequest(String id, HttpServletRequest request) {
		String loginType = (String) request.getSession().getAttribute(
				"loginType");
		System.out.println(loginType);

		AdminUser user = null;
		Timestamp Dt = obj.dateAndTime();
		List<AdminUser> adminUser = new ArrayList<AdminUser>();
		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			/* UPDATE QUERY FOR APPROVED REQUEST ID */
			ResultSet rs = null;
			// javaMailService.sendEmail();
			String uid = (String) request.getSession().getAttribute(
					"MySessionId");

			if (loginType.equals("QA")) {

				/******
				 * WRITE QUERY FOR TABLE WHERE STATUS APPROVED BY QA, WHERE
				 * STATUS =="APPROVED BY QA"
				 *********/
				String value = "QA";
				int sts = 0;
				int Status = 1;
				try {
					/*
					 * statement.executeUpdate("update REQUEST SET ApprovedBy = '"
					 * + value + "',Status_id = '"+ sts +
					 * "', where requestId = '" + requestId + "'");
					 */

					statement.executeUpdate("update REQUEST SET RejectedBy = '"
							+ value + "',Status_id = '" + sts
							+ "',LastUpdatedOn = '" + Dt
							+ "' where RequestId ='" + id + "'");

					rs = statement
							.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
									+ Status + "'");
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			else if (loginType.equals("PL")) {
				String value = "PL";
				int sts = 0;
				int Status = 2;
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");
				rs = statement
						.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req INNER JOIN requestor AS restr on req.RequestorId=restr.requestorId where  Status_Id= '"
								+ Status + "'");
			}

			else if (loginType.equals("SLM")) {
				int sts = 3;
				String value = "SLM";
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");
				rs = statement
						.executeQuery("select * from request where RejectedBy ='"
								+ value + "'");
			}

			else if (loginType.equals("ADM")) {
				int sts = 0;
				String value = "ADM";
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");
				rs = statement
						.executeQuery("select * from request where RejectedBy ='"
								+ value + "'");

			} else if (loginType.equals("")) {
				int sts = 0;
				String value = "ADM";
				statement.executeUpdate("update REQUEST SET RejectedBy = '"
						+ value + "',Status_id = '" + sts
						+ "',LastUpdatedOn = '" + Dt + "' where RequestId ='"
						+ id + "'");
				rs = statement
						.executeQuery("select * from request where RejectedBy ='"
								+ value + "'");

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
				user.setApprovedBy(rs.getString("RejectedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				// user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				// user.setLastUpdatedOn(Dt.toString());
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));

				user.setRaisedReqId(rs.getString("RequestId"));
				user.setRequestorId(rs.getString("RequestorId"));
				user.setServiceId(rs.getString("ServiceId"));
				// user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				user.setLastUpdatedOn(rs.getString("Date"));
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
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

			rs = statement
					.executeQuery("select req.RequestId,req.RequestorId,restr.firstName, restr.lastName,req.ServiceId,req.Date,req.ApprovedBy,req.Status_Id,req.LastUpdatedOn,req.RejectedBy FROM request AS req LEFT OUTER JOIN requestor AS restr on req.RequestorId=restr.requestorId");

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
				user.setApprovedBy(rs.getString("RejectedBy"));
				user.setRaisedReqId(rs.getString("RequestId"));
				// user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				// user.setLastUpdatedOn(Dt.toString());
				user.setServiceId(rs.getString("ServiceId"));
				user.setStatus_Id(rs.getString("Status_Id"));

				user.setRaisedReqId(rs.getString("RequestId"));
				user.setRequestorId(rs.getString("RequestorId"));
				user.setServiceId(rs.getString("ServiceId"));
				// user.setLastUpdatedOn(rs.getString("LastUpdatedOn"));
				user.setLastUpdatedOn(rs.getString("Date"));
				user.setApprovedBy(rs.getString("ApprovedBy"));
				user.setStatus_Id(rs.getString("Status_Id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				adminUser.add(user);
			}
		} catch (Exception e) {
		}
		return adminUser;
	}

	@Override
	public  ServiceIntro  getAllServiceIntro() {
		// TODO Auto-generated method stub
		
		ServiceIntro serviceIntro=null;
		
		try {
			
			
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();

			ResultSet rs = null;

			
			rs = statement
					.executeQuery("select * from service");
		String[] row= new String[16];
		
		
					
			serviceIntro= new ServiceIntro();
			boolean j;
			for(int i=0;j=rs.next();i++){
				row[i]=rs.getObject(3).toString();
				System.out.println(row[i]);
			}
				serviceIntro.setAutomatedTesting(row[0]);
				serviceIntro.setComplianceTesting(row[1]);
				serviceIntro.setDataIntegrationTesting(row[2]);
				serviceIntro.setInfrastructureTesting(row[3]);
				serviceIntro.setMiddlewareESB(row[4]);
				serviceIntro.setMobileTesting(row[5]);
				serviceIntro.setOnlineeCommerce(row[6]);
				serviceIntro.setOracleERPTesting(row[7]);
				serviceIntro.setPerformancEngineering(row[8]);
				serviceIntro.setPerformanceTesting(row[9]);
				serviceIntro.setQass(row[10]);
				serviceIntro.setSalesForceTesting(row[11]);
				serviceIntro.setSecurityTesting(row[12]);
				serviceIntro.setTestDataManagement(row[13]);
				serviceIntro.setTestEnvironment(row[14]);
				serviceIntro.setTestprogram(row[15]);
		}

		catch (Exception e) {
			System.out.println(e);
		}
		
		return serviceIntro;
	}

}
