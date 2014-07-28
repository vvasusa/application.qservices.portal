package com.pearson.controller;

import java.io.File;
import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.swing.JFileChooser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;



public class MailService {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;
	
/*
	 
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
*/
	
	


	@Value("${From_Email}")
	private String from;

	@Value("${To_Email}")
	private String to;

	
	  @Autowired private SimpleMailMessage alertMailMessage;
	 

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
			  
			  JFileChooser chooser = new JFileChooser();
			  chooser.showOpenDialog(null); 
			  File file = chooser.getSelectedFile(); 
			  String filename = file.getName();
			  System.out.println("You have selected: " );
			  System.out.println("You have selected: " + filename);
			  FileSystemResource file1 = new FileSystemResource(filename);
			  mail.addAttachment(file.getPath(), file1);
			//  mail.addHeaderLine("welcome "+password);
			  
			  // List<String> ccList = (List<String>) model.get(CC_LIST);
			  sender.send(mimemessage);
			 

		}

		catch (Exception e) {
			System.out.println(e);
			throw new MailParseException(e);

		}
	 }
}
	/*
	public void sendRequestID(String email, String reqid) {
		
		try {


			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(email);
			message.setSubject("your details" + reqid);
			message.setText("welcome");
			// sending the message
			mailSender.send(message);
		}

		catch (Exception e) {
			System.out.println(e);
			throw new MailParseException(e);

		}

	}*/































