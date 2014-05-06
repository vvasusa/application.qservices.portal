package com.pearson.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.swing.JFileChooser;

import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public abstract class Abcd implements MailSender{
	private MailSender mailSender;

       /* public static void main(String[] args) {              
        	JFileChooser chooser = new JFileChooser();              
        	chooser.showOpenDialog(null);          
        	File file = chooser.getSelectedFile();            
        	String filename = file.getName();            
        	System.out.println("You have selected: " + filename);    
        	}*/
	

}

	
	
	
        

