package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.Constants;
import com.pearson.model.AdminUser;

@Service("mailService")
@Configurable
public class EmailHelper {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender1;

	Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0]
			.getClassName());

	public List<String> getEmailAddressApproveRequest(String requestId,
			String actionValue, List<String> names,
			javax.sql.DataSource dataSource, String loginType,
			List<AdminUser> adminUser, JavaMailSenderImpl sender)
			throws SQLException {

		Connection connection = dataSource.getConnection();
		Statement statement = connection.createStatement();
		String status = "";
		try {
			ResultSet rs = null;
			int j = 0;

			if (StringUtils.endsWithIgnoreCase(actionValue, "Approve")) {

				if (StringUtils
						.endsWithIgnoreCase(loginType, Constants.LEVEL_1)) {

					rs = statement
							.executeQuery("select email from adminuser where loginType='"
									+ Constants.LEVEL_2 + "'");
					status = Constants.OVERALL_STATUS_2;
				}
				if (StringUtils
						.endsWithIgnoreCase(loginType, Constants.LEVEL_2)) {
					rs = statement
							.executeQuery("select email from adminuser where loginType='"
									+ Constants.LEVEL_3 + "'");
					status = Constants.OVERALL_STATUS_3;
				}
				if (StringUtils
						.endsWithIgnoreCase(loginType, Constants.LEVEL_3)) {
					rs = statement
							.executeQuery("select email from adminuser where loginType='"
									+ Constants.LEVEL_4 + "'");
					status = Constants.OVERALL_STATUS_4;
				}
				if (StringUtils
						.endsWithIgnoreCase(loginType, Constants.LEVEL_4)) {
					rs = statement.executeQuery("select email from adminuser");
					status = Constants.OVERALL_STATUS_5;

				}

				int i = 0;
				while (rs.next()) {
					names.add(rs.getString("email"));
					System.out.println(rs.getString("email"));
				}

				getRequestorEmail(requestId, statement, actionValue, adminUser,
						status, sender);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;
	}

	public List<String> getRequestorEmail(String requestId,
			Statement statement, String actionValue, List<AdminUser> adminUser,
			String status, JavaMailSenderImpl sender) {

		List<String> emailAddress = new ArrayList<String>();
		String reqName = "";
		String date = "";

		try {

			ResultSet rs1 = statement
					.executeQuery("SELECT *FROM request LEFT JOIN requestor ON  requestor.Requestorid=request.requestorid LEFT JOIN service ON  service.Service_Id=request.ServiceId where request.RequestId='"
							+ requestId + "'");

			while (rs1.next()) {
				emailAddress.add(rs1.getString("email"));
				reqName = (rs1.getString("Service_Name"));
				date = (rs1.getString("email"));
			}

			System.out.println("Approve Request");
			MimeMessage mime = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mime, true);
			if (emailAddress != null) {
				for (String to : emailAddress) {
					helper.addTo(to);
					helper.setTo(to);
				}
			}

			helper.setSubject("Your Request Approved");
			String htmlText = "<div style='background:#00FA9A;text-align:center;"
					+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
					+ "WELCOME TO PEARSON Q-SERVICE PORTAL......<br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------<br /><br />"
					+ "Request ID :"
					+ requestId
					+ "Request Name :"
					+ reqName
					+ "<br /><br />"
					+ "Request Date ..."
					+ date
					+ "<br /><br />"
					+ "Request Status ..."
					+ status
					+ "<br /><br />"
					+ " Please Login:....<br /><br /><br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------<br /><br />"
					+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
					+ "</div>";
			System.out.println(htmlText);
			helper.setText(htmlText, true);
			sender.send(mime);

		} catch (Exception e) {
			logger1.info("Email Helper" + e);
		}
		return emailAddress;
	}

	public List<String> getEmailAddress(List<String> names,
			javax.sql.DataSource dataSource) {

		try {
			int j = 0;

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();

			ResultSet rs = statement
					.executeQuery("select * from adminuser where loginType='"
							+ Constants.LEVEL_1 + "'");

			int i = 0;
			while (rs.next()) {
				names.add(rs.getString("email"));
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;

	}

	public List<String> getEmailAddressRejectRequest(String id,
			String actionValue, List<String> names,
			javax.sql.DataSource dataSource, String loginType,
			List<AdminUser> adminUser, JavaMailSenderImpl sender) {
		try {
			int j = 0;
			int i = 0;
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String email = "";
			String reqName = "";
			String date = "";

			for (i = 0; i < adminUser.size(); i++) {
				if (StringUtils.endsWithIgnoreCase(adminUser.get(i)
						.getRaisedReqId(), id)) {
					email = adminUser.get(i).getEmail();
					reqName = adminUser.get(i).getServiceName();
					date = adminUser.get(i).getDate();

				}
			}
			System.out.println("Reject Request");
			MimeMessage mime = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mime, true);
			// helper.setFrom("");
			helper.setTo(email);
			helper.setSubject("Your Request Reject");
			String htmlText = "<div style='background:#00FA9A;text-align:center;"
					+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
					+ "WELCOME TO PEARSON Q-SERVICE PORTAL......<br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------"
					+ "Request ID :"
					+ id
					+ "Request Name :"
					+ reqName
					+ "<br /><br />"
					+ "Request Date ..."
					+ date
					+ "<br /><br />"
					+ "Request Status ..."
					+ "Rejected"
					+ "<br /><br />"
					+ "Please Login:....<br /><br /><br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------"
					+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
					+ "</div>";
			System.out.println(htmlText);
			helper.setText(htmlText, true);
			sender.send(mime);

			ResultSet rs = statement
					.executeQuery("select email from adminuser");

			while (rs.next()) {
				names.add(rs.getString("email"));
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;

	}

}
