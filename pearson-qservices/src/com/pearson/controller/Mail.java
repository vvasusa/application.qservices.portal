package com.pearson.controller;

import java.io.File;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;
import javax.swing.JFileChooser;

import org.springframework.core.io.FileSystemResource;

public class Mail {

	public static void main(String[] args) {

		final String username = "karthikeyan.arunachalam@cognizant.com";
		final String password = "brithi@2014";

		Properties props = new Properties();
		props.put("mail.smtp.auth", true);
		props.put("mail.smtp.starttls.enable", true);
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(
					"karthikeyan.arunachalam@cognizant.com"));
			
			
			String[] to = {"test1@gmail.com","test2@yahoo.in","test3@gmail.com","test4@gmail.com"};
			
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

			JFileChooser chooser = new JFileChooser();
			chooser.showOpenDialog(null);
			File file = chooser.getSelectedFile();
			String filename = file.getName();
			FileSystemResource file1 = new FileSystemResource(filename);
			System.out.println("You have selected: " + filename);
			DataSource source = new FileDataSource(file);
			messageBodyPart.setDataHandler(new DataHandler(source));
			messageBodyPart.setFileName(filename);
			multipart.addBodyPart(messageBodyPart);

			message.setContent(multipart);

			System.out.println("Sending");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}
}
