package com.pearson.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.mail.internet.MimeMessage;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import com.pearson.dao.EmailHelper;
import com.pearson.model.AdminUser;

@Service("mailService")
public class JavaMailServiceImpl implements JavaMailService {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;
	@Value("${From_Email}")
	private String from;
	@Value("${To_Email}")
	private String to;
	@Value("${Mail_pass}")
	private String pass;
	final org.slf4j.Logger logger = LoggerFactory
			.getLogger(JavaMailServiceImpl.class);
	private static final Logger LOG = Logger.getLogger(Thread.currentThread()
			.getStackTrace()[0].getClassName());
	Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0]
			.getClassName());


	public void sendEmailApproveRequest(String requestId, String actionValue,javax.sql.DataSource dataSource,String loginType,  List<AdminUser> adminUser) throws SQLException  {
		
		int j=0;
		int i=0;
		String reqName="";
		String date="";
		EmailHelper emailHelper = new EmailHelper();
		List<String> names = new ArrayList<String>();
		names = emailHelper.getEmailAddressApproveRequest(requestId, actionValue, names,dataSource,loginType,adminUser,sender);
		//names = getRequestorEmail(requestId, j, names);
		
		try {
			
		for ( j = 0; j < names.size(); j++) {
			System.out.println("Approve req--->" + names.get(j));
		}
			
			System.out.println("Approve Request");
			MimeMessage mime = this.sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mime, true);
			helper.setFrom(from);
			if (names != null) {
				for (String to : names) {
					helper.addTo(to);
					helper.setTo(to);
				}
			}
			helper.setTo(to);
			
			for(i=0;i<adminUser.size();i++){
			if(StringUtils.endsWithIgnoreCase(adminUser.get(i).getRaisedReqId(),requestId))
			{
				//email=adminUser.get(i).getEmail();
				reqName=adminUser.get(i).getServiceName();
				date=adminUser.get(i).getDate();
				
			}}
			
			helper.setSubject("Approve Request");
			String htmlText = "<div style='background:#00FA9A;text-align:center;"
					+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
					+ "WELCOME TO PEARSON Q-SERVICE PORTAL......<br /><br />"
					+ "-----------------------------------------------------------------------------------<br /><br />"
					+ "Request Id:"+ requestId+" <br /><br />"
					+ "Service Name:"+ reqName+" <br /><br />"
					+ "Request Date:"+ date+" <br /><br />"
					+ "Approved :"+ loginType+" <br /><br />"
					+ "..................................................................................<br /><br />"
					+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
					+ "</div>";
			System.out.println(htmlText);
			helper.setText(htmlText, true);
			sender.send(mime);

		}
		
		catch (Exception e) {
			logger.debug("JavaMailServiceImpl" + e);
			LOG.info("JavaMailServiceImpl" + e);
			logger1.info("JavaMailServiceImpl" + e);
		}
	}

	@Override
	public void sendEmail(String requestId) {
		// TODO Auto-generated method stub
	}

	public void sendEmail(String email, StringBuilder requestorID, String pass) {
		try {
			
			MimeMessage mime = this.sender.createMimeMessage();
			MimeMessageHelper mail = new MimeMessageHelper(mime, true);
			mail.setFrom(from);
			mail.setTo(email);
			mail.setSubject("Pearson Registration Details");
			ArrayList<String> toAddress = new ArrayList<String>();
			if (toAddress != null) {
				for (String to : toAddress) {
					mail.addTo(to);
					mail.setTo(to);
					System.out.println("To address" + to);
				}
			}
			String htmlText = "<div style='background:#00FA9A;text-align:center;"
					+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
					+ "WELCOME TO PEARSON Q-SERVICE PORTAL<br /><br />"
					+ "--------------------------------------------------------------------------------------<br /><br />"
					+ "Your ID :"
					+ requestorID
					+ "....<br /><br />"
					+ "Your temporary Password :"
					+ pass
					+ "....<br /><br />"
					
					+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
					+ "</div>";
			System.out.println(htmlText);
			mail.setText(htmlText, true);
			sender.send(mime);
			
			
		} catch (Exception e) {
			System.out.println(e);
			throw new MailParseException(e);
		}
	}

	@Override
	public void sendEmail(String requestId, String actionValue) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void sendEmailRejectRequest(String id, String actionValue,
			javax.sql.DataSource dataSource, String loginType,
			List<AdminUser> adminUser) {
		int j=0;
		EmailHelper emailHelper = new EmailHelper();
		List<String> names = new ArrayList<String>();
	
		try {
			
			names=emailHelper.getEmailAddressRejectRequest(id, actionValue, names,dataSource,loginType,adminUser,sender);
			
		for ( j = 0; j < names.size(); j++) {
			System.out.println("Reject req--->" + names.get(j));
		}
			
			System.out.println("Reject Request");
			MimeMessage mime = this.sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mime, true);
			helper.setFrom(from);
			int i=0;
			String email="";
			String reqName="";
			String date="";
			String requestorName="";
			String serviceName="";
			if (names != null) {
				for (String to : names) {
					helper.addTo(to);
					helper.setTo(to);
				}
			}
			for(i=0;i<adminUser.size();i++){
				if(StringUtils.endsWithIgnoreCase(adminUser.get(i).getRaisedReqId(),id))
				{
					email=adminUser.get(i).getEmail();
					reqName=adminUser.get(i).getServiceName();
					date=adminUser.get(i).getDate();
					requestorName=adminUser.get(i).getFirstName();
					requestorName.concat(adminUser.get(i).getLastName());
					serviceName=adminUser.get(i).getServiceName();
					
				}}
			//helper.setTo(to);
			helper.setSubject("Request Rejected");
			String htmlText = "<div style='background:#00FA9A;text-align:center;"
					+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
					+ "WELCOME TO PEARSON Q-SERVICE PORTAL......<br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------"
					+ "Request ID :"+ id
					+ "Request Name :"+reqName +"<br /><br />"
					+ "Request Name :"+serviceName +"<br /><br />"
					+ "Request Date ..."+date+"<br /><br />"
					+ "Requestor Name ..."+requestorName+"<br /><br />"
					+ "Please Login:....<br /><br /><br /><br />"
					+ "-----------------------------------------------------------------------------------------------------------"
					+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
					+ "</div>";
			System.out.println(htmlText);
			helper.setText(htmlText, true);
			sender.send(mime);

		}
		
		catch (Exception e) {
			logger.debug("JavaMailServiceImpl" + e);
			LOG.info("JavaMailServiceImpl" + e);
			logger1.info("JavaMailServiceImpl" + e);
		}
	}
}
