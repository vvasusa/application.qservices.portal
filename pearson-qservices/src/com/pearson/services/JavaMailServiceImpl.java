package com.pearson.services;



import java.util.logging.Logger;

import javassist.bytecode.stackmap.TypeData.ClassName;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
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
	//Logger logger1 = Logger.getAnonymousLogger();


	
	@Override
	public void sendEmail(String requestId) {
		
	
		EmailHelper  emailHelper=new EmailHelper();
			String[] names = new String[10];
			names=emailHelper.getEmailAddress(requestId);
		
		for(int j=0;j<names.length;j++){
			
			System.out.println("javaMailService"+names[j]);
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
			logger.debug("welcome");
			logger1.info(""+e);
			
		}
	}

	
	/*public static void main(String[] args) {
		try {
			JavaMailServiceImpl obj = new JavaMailServiceImpl();
			 obj.sendEmail();

		} catch (Exception e) {
			System.out.println(e);
		}
	}*/
}
