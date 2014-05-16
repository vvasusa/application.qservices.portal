package com.pearson.services;

import java.io.File;
import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.swing.JFileChooser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class JavaMailServiceImpl implements JavaMailService {

	@Autowired
	private MailSender mailSender;

	@Autowired
	private org.springframework.mail.javamail.JavaMailSenderImpl sender;
	
	@Value("${From_Email}")
	private String from ;
	
	@Value("${To_Email}")
	private String to ;

	/*
	 * @Autowired private SimpleMailMessage alertMailMessage;
	 */

	public void sendEmail() {
		// private final static Logger LOGGER =
		// Logger.getLogger(UseLogger.class.getName());

		MimeMessage msg = null;
		try {

			System.out.println("welcome to mail box..");
			MimeMessage Mimemessage = sender.createMimeMessage();
			MimeMessageHelper mail = new MimeMessageHelper(Mimemessage, true);
			mail.setFrom(from);
			mail.addTo(to);

			ArrayList<String> toAddress = new ArrayList<String>();

			if (toAddress != null) {
				for (String to : toAddress) {
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
