package com.pearson.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.util.StringUtils;

import com.Constants;
import com.pearson.model.AdminUser;



public class MailService {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;
	
	/*@Autowired
	DataSource dataSource;*/
	
	 @Autowired
	 private SimpleMailMessage alertMailMessage;
	
	
	Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());
	
	@Value("${From_Email}")
	private String from;

	@Value("${To_Email}")
	private String to;
	
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.driverClassName}")
	private String driver;
	@Value("${jdbc.username}")
	private String userName;
	@Value("${jdbc.password}")
	private String password;
	



	public void sendEmail(String email,StringBuilder requestorID, String password) {
		try {
			
			
			  System.out.println("welcome to mail box..");
			  MimeMessage mimemessage = sender.createMimeMessage(); 
			  MimeMessageHelper mail  = new MimeMessageHelper(mimemessage, true); mail.setFrom(from);
			
			  mail.addTo(email);
			  
			  ArrayList<String> toAddress = new ArrayList<String>();
			  
			  if (toAddress != null) { for (String to : toAddress) {
			  mail.addTo(to); mail.setTo(to); } }
			  
			  mail.setSubject("hii");
			  mail.setText("hello your Tempory password is " +password, true);
			  
			 /* JFileChooser chooser = new JFileChooser();
			  chooser.showOpenDialog(null); 
			  File file = chooser.getSelectedFile(); 
			  String filename = file.getName();
			  System.out.println("You have selected: " );
			  System.out.println("You have selected: " + filename);
			  FileSystemResource file1 = new FileSystemResource(filename);
			  mail.addAttachment(file.getPath(), file1);*/
			//  mail.addHeaderLine("welcome "+password);
			  
			  // List<String> ccList = (List<String>) model.get(CC_LIST);
			  sender.send(mimemessage);
			 

			//	Message message = new MimeMessage(mimemessage);
				MimeMessage message = sender.createMimeMessage();
				message.setFrom(new InternetAddress(
						"karthikeyan.arunachalam@cognizant.com"));
				
				
				String[] to = {"karthikeyan.arunachalam@cognizant.com","karthikeyan.arunachalam@cognizant.com"};
				
				InternetAddress[] addressTo = new InternetAddress[to.length];
	            for (int i = 0; i < to.length; i++)
	            {
	                addressTo[i] = new InternetAddress(to[i]);
	            }
	            message.setRecipients(RecipientType.TO, addressTo); 

			/*	message.setRecipients(Message.RecipientType.TO, InternetAddress
						.parse("karthikeyan.arunachalam@cognizant.com"));*/
	            
				message.setSubject("Testing Subject");
				message.setText("PFA");

				MimeBodyPart messageBodyPart = new MimeBodyPart();

				Multipart multipart = new MimeMultipart();

				messageBodyPart = new MimeBodyPart();

				/*JFileChooser chooser1 = new JFileChooser();
				chooser.showOpenDialog(null);
				File file2 = chooser.getSelectedFile();
				String filename2 = file2.getName();
				FileSystemResource file3 = new FileSystemResource(filename2);
				System.out.println("You have selected: " + filename2);
				DataSource source = new FileDataSource(file);
				messageBodyPart.setDataHandler(new DataHandler(source));
				messageBodyPart.setFileName(filename2);*/
				multipart.addBodyPart(messageBodyPart);

				message.setContent(multipart);

				System.out.println("Sending");

				Transport.send(message);

				System.out.println("Done");

		}

		catch (Exception e) {
			System.out.println(e);
			throw new MailParseException(e);

		}
	 }


/***************** New Request Mail Service  ( TO USER )  
 * @param adminUser *******************/	
	
	public void mailNewRequest(String email, String reqid, String Reqname,java.sql.Timestamp date, javax.sql.DataSource dataSource, List<AdminUser> adminUser) {
		
		try{
/*		
MimeMessage mimemessage = sender.createMimeMessage();
		MimeMessageHelper mail = new MimeMessageHelper(mimemessage, true);
		mail.setFrom(from);
		mail.addTo(email);
		System.out.println("email" + email);
		ArrayList<String> toAddress = new ArrayList<String>();
		if (toAddress != null) {
			for (String to : toAddress) {
				mail.addTo(to);
				mail.setTo(to);
				System.out.println("To address" + to);
			}
		}
		mail.addTo(email);
		mail.setTo(email);
		mail.setSubject("hii");
		mail.setText("Welcome To Pearson Q-Service Portal");
		mail.setText(" Your Tempory password is " + reqid, true);
		sender.send(mimemessage);*/
		
		MimeMessage mime = this.sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mime, true);
		helper.setFrom(from);
		helper.setTo(email);
		helper.setSubject("Pearson Q-Service Portal");
		helper.setText("");
		String htmlText = "<div style='background:#000A9A;text-align:center;"
				+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
				+ "WELCOME TO PEARSON Q-SERVICE PORTAL......<br /><br />"
				+"-------------------------------------------------------<br/><br/>"
				+ " You Have Raised Request Sucessfully....<br /><br />"
				
				+ "Your RequestID is :"	+ reqid	+ "....<br /><br />"
				+ "Your Request Name is :"+Reqname +"......<br /><br />"
				+ "Your Request Date  is :"+date +"......<br /><br />"
				+ " For More Details :<a href = > ....<br /><br />"
				+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
				+ "</div>";
		System.out.println(htmlText);
		helper.setText(htmlText, true);
		sender.send(mime);
		
		sendMailToManager(reqid, Reqname,dataSource,date,adminUser);
		}
		catch(Exception e){
			
		}
		
	}

/*********  END  ********Mail Service Raise New Request*******************/

/*****************  New Request Mail Service ( TO 1st Level Managers )  dataSource 
 * @param date 
 * @param adminUser *******************/	
	
	public void sendMailToManager(String reqid, String Reqname, javax.sql.DataSource dataSource, Timestamp date, List<AdminUser> adminUser) throws MessagingException {
	

		
		MimeMessage mime = this.sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mime, true);
		helper.setFrom(from);
		
	//	EmailHelper emailHelper = new EmailHelper();
		List<String> names = new ArrayList<String>();
		names = getEmailAddressNewRequest(names,dataSource);
		ArrayList<String> toAddress = new ArrayList<String>();
		if (toAddress != null) {
			for (String to : names) {
				helper.addTo(to);
				helper.setTo(to);
				System.out.println("To address" + to);
			}
		}
		
		helper.setSubject("NEW REQUEST ASSIGNED TO YOU");
		
		String htmlText = "<div style='background:#000A9A;text-align:center;"
				+ "font-size:12pt;font-weight:bold;color:#800000;padding:10px;'>"
				+ "PEARSON Q-SERVICE PORTAL......<br /><br />"
				+"-------------------------------------------------------<br/><br/>"
				+ " You Have Raised Request Sucessfully....<br /><br />"
				
				+ "Your RequestID is :"	+ reqid	+ "....<br /><br />"
				+ "Your Request Name is :"+Reqname +"......<br /><br />"
				+ "Your Request Name is :"+date +"......<br /><br />"
				+ " For More Details :<a href = > ....<br /><br />"
				+ "© CopyRight 2014 | Pearson Q-service Team.....<br /><br />"
				+ "</div>";
		System.out.println(htmlText);
		helper.setText(htmlText, true);
		sender.send(mime);
	}

/*********  END  ********Mail Service Raise New Request*******************/

	public List<String> getEmailAddressNewRequest(List<String> names,javax.sql.DataSource dataSource) {
		
		try {
			int j = 0;
			
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			
		
				ResultSet rs = statement.executeQuery("select email from adminuser where loginType='"+ Constants.LEVEL_1 + "'");
				
				int i = 0;
				while (rs.next()) {
					names.add(rs.getString("email"));
				}

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;
		
	}

	public List<String> getEmailAddress(String requestId, String actionValue,
			List<String> names)  {

			try {
				Class.forName(driver).newInstance();
				Connection conn = DriverManager.getConnection(url,userName,password);
				//Connection connection = dataSource.getConnection();
			Statement statement = conn.createStatement();
			int j = 0;
			
			
			if (StringUtils.endsWithIgnoreCase(actionValue, "Approve")) {
				ResultSet rs = statement.executeQuery("select email from adminuser");
			
				int i = 0;
				while (rs.next()) {
					names.add(rs.getString("email"));
				}
			}
		names = getRequestorEmail(statement, requestId, j, names);

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;
	}

	public List<String> getRequestorEmail(Statement statement,
			String requestId, int i, List<String> names) {
		try {

			ResultSet rs1 = statement
					.executeQuery("SELECT email from requestor left join request on requestor.requestorId=request.RequestorId where request.RequestId='"
							+ requestId + "'");
			while (rs1.next()) {
				names.add(rs1.getString("email"));
			}
		} catch (Exception e) {
			logger1.info("Email Helper"+e);
		}
		return names;
	}
	
	
}


























