package com.pearson.services;

public interface JavaMailService {
	public void sendEmail(String requestId);
	public void sendEmail(String requestId,String actionValue);
	public void sendEmail(String email,StringBuilder requestorID, String password);
	
	
}
