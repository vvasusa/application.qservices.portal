package com.pearson.services;

import java.sql.SQLException;
import java.util.List;

import javax.mail.MessagingException;
import javax.sql.DataSource;

import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.pearson.model.AdminUser;

public interface JavaMailService {
	public void sendEmail(String requestId) throws MessagingException;
	public void sendEmail(String requestId,String actionValue);
	public void sendEmail(String email,StringBuilder requestorID, String password) throws MessagingException;
	//public void sendEmailApproveRequest(String requestId,String actionValue, DataSource dataSource,String loginType);
	public void sendEmailApproveRequest(String requestId, String actionValue,
			DataSource dataSource, String loginType, List<AdminUser> adminUser) throws SQLException;
	public void sendEmailRejectRequest(String id, String actionValue,
			DataSource dataSource, String loginType, List<AdminUser> adminUser);
	
	
}
