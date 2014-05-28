package com.pearson.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RequestForm {

	@NotNull
	@NotEmpty(message = "Please enter your firstName addresss.")
	private String firstName;
	@NotNull
	@NotEmpty(message = "Please enter your lastName addresss.")
	private String lastName;
	@Email
	@NotEmpty(message = "Please enter your email addresss.")
	@NotNull
	private String email;
	@NotEmpty(message = "Please enter your PhoneNo addresss.")
	@NotNull
	private String phoneNo;
	
	private String subject;
	private String loginType;
	private String requestId;
	private String requestName;

	public String getRequestId() {
		return requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getRequestName() {
		return requestName;
	}

	public void setRequestName(String requestName) {
		this.requestName = requestName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

}
