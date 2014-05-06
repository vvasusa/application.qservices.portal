package com.pearson.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.swing.JFileChooser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;

import antlr.collections.List;

import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;

public class JavaMailServiceImpl implements JavaMailService {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;

	/*
	 * @Autowired private SimpleMailMessage alertMailMessage;
	 */

	public void sendEmail() {
		// private final static Logger LOGGER =
		// Logger.getLogger(UseLogger.class.getName());

		MimeMessage msg = null;
		try {

			MimeMessage Mimemessage = sender.createMimeMessage();
			MimeMessageHelper mail = new MimeMessageHelper(Mimemessage, true);
			mail.setFrom("karthikcarun@gmail.com");
			mail.addTo("karthikcarun@gmail.com");

			ArrayList<String> toddress = new ArrayList<String>();

			if (toddress != null) {
				for (String to : toddress) {
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
			sender.send(msg);
		}

		catch (Exception e) {
			throw new MailParseException(e);
		}

	}
}
