package com.pearson.model;


import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


public class RequestForm {
	private @Valid RequestForm requestForm;

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
	@NotEmpty(message = "{form.email.NotNull}")
	@NotNull
	private String phoneNo;
	private String loginType;
	private String requestId;
	private String requestName;
	private String req_ServiceName;
	private String req_ServiceID;
	private String approveID;
	private String rejectID;
	
	public RequestForm getRequestForm() {
		return requestForm;
	}

	public void setRequestForm(RequestForm requestForm) {
		this.requestForm = requestForm;
	}

	public String getApproveID() {
		return approveID;
	}

	public void setApproveID(String approveID) {
		this.approveID = approveID;
	}

	public String getRejectID() {
		return rejectID;
	}

	public void setRejectID(String rejectID) {
		this.rejectID = rejectID;
	}


	

	private String subject;

	public String getReq_ServiceName() {
		return req_ServiceName;
	}

	public void setReq_ServiceName(String req_ServiceName) {
		this.req_ServiceName = req_ServiceName;
	}

	public String getReq_ServiceID() {
		return req_ServiceID;
	}

	public void setReq_ServiceID(String req_ServiceID) {
		this.req_ServiceID = req_ServiceID;
	}

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
