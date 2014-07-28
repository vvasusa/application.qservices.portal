package com.pearson.services;



import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

//import javassist.bytecode.stackmap.TypeData.ClassName;


import javax.mail.internet.MimeMessage;
import javax.swing.JFileChooser;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.pearson.Helper.EmailHelper;
@Service("mailService")
public class JavaMailServiceImpl implements JavaMailService {
	
	//static Logger logger = Logger.getLogger(MyClass.class.getName());
	

	@Autowired
//	private MailSender mailSender;
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;
	
	@Value("${From_Email}")
	private String from ;
	
	@Value("${To_Email}")
	private String to ;

	final org.slf4j.Logger logger = LoggerFactory.getLogger(JavaMailServiceImpl.class);
	private static final Logger LOG = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());
	Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());
	
	@Override
	public void sendEmail(String requestId, String actionValue) {
		
		EmailHelper  emailHelper=new EmailHelper();
		List<String> names = new ArrayList<String>();
			
		//names=emailHelper.getEmailAddress(requestId,actionValue);
		names=emailHelper.getEmailAddress(requestId,actionValue,names);
		
		for(int j=0;j<names.size();j++){
			
			System.out.println("javaMailService"+names.get(j));
		}
		
		
		//MimeMessage msg = sender.createMimeMessage();
		try {

/*			System.out.println("welcome to mail box..");
			MimeMessage mimemessage = sender.createMimeMessage();
			MimeMessageHelper mail = new MimeMessageHelper(mimemessage, true);
			mail.setFrom(from);
			mail.addTo(to);

			ArrayList<String> toAddress = new ArrayList<String>();

			if (names != null) {
				for (String to : names) {
					mail.addTo(to);
					mail.setTo(to);
				}
			}
			mail.setSubject("hii");
			mail.setText("hello", true);
			JFileChooser chooser = new JFileChooser();
			chooser.showOpenDialog(null);
			File file = chooser.getSelectedFile();
			String filename = file.getName();
			System.out.println("You have selected: " + filename);
			FileSystemResource file1 = new FileSystemResource(filename);
			mail.addAttachment(file.getPath(), file1);
			// List<String> ccList = (List<String>) model.get(CC_LIST);
			sender.send(mail);*/
			
			
			 SimpleMailMessage message = new SimpleMailMessage(); 
			 message.setFrom(from);
			 if (names != null) {
					for (String to : names) {
						message.setTo(to);
						
					}
				}
			 
			 message.setCc(to);
			 message.setSubject("PROJECT MAIL CHECK");     
			 message.setText("WELCOME TO PEARSON MAIL BOX");     
			 mailSender.send(message); 
			
		}
		catch (Exception e) {
			System.out.println(e);
			//throw new MailParseException(e);
			logger.debug("JavaMailServiceImpl"+e);
			LOG.info("JavaMailServiceImpl"+e);
			logger1.info("JavaMailServiceImpl"+e);
			
		}
	}



	@Override
	public void sendEmail(String requestId) {
		// TODO Auto-generated method stub
		
	}

	
	/*public static void main(String[] args) {
		try {
			JavaMailServiceImpl obj = new JavaMailServiceImpl();
			 obj.sendEmail();

		} catch (Exception e) {
			System.out.println(e);
		}
	}*/
	
	
	
	
	
	public void sendEmail(String email,StringBuilder requestorID, String password) {
		try {
			
			  System.out.println("welcome to mail box..");
			  MimeMessage mimemessage = sender.createMimeMessage(); 
			  MimeMessageHelper mail  = new MimeMessageHelper(mimemessage, true); mail.setFrom(from);
			
			  mail.addTo(email);
			  
			  System.out.println("email"+email);
			  
			  ArrayList<String> toAddress = new ArrayList<String>();
			  
			  if (toAddress != null) { 
				  for (String to : toAddress)
				  {
			  mail.addTo(to); mail.setTo(to);
			  
			  System.out.println("To address"+to);
			  } 
				  }
			  
			  mail.addTo(email);
			  mail.setTo(email);
			  
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
