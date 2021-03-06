package com.pearson.model;

public class AdminUser {

	private String userId;
	private String firstName;
	private String lastName;
	private String location;
	private String address;
	private String phoneNo;
	private String email;
	private String loginType;
	private String requestID;
	private String requestName;

	/* FOR DISPLAYING REQUEST lIST RASIED BY USER .. */
	private String raisedReqId;
	private String requestorId;
	private String serviceId;
	private String lastUpdatedOn;
	private String approvedBy;
	private String raisedDate;
	private String status_Id;
	private String desc;
	private String date;
	private String rejectedBy;
	private String status;
	private String serviceName;
	/* FOR DISPLAYING REQUEST lIST RASIED BY USER .. */
	
	private String commandsByQA;
	private String commandsByPL;
	private String commandsBySLM;
	private String commandsByADM;

	
	public String getCommandsByQA() {
		return commandsByQA;
	}

	public void setCommandsByQA(String commandsByQA) {
		this.commandsByQA = commandsByQA;
	}

	public String getCommandsByPL() {
		return commandsByPL;
	}

	public void setCommandsByPL(String commandsByPL) {
		this.commandsByPL = commandsByPL;
	}

	public String getCommandsBySLM() {
		return commandsBySLM;
	}

	public void setCommandsBySLM(String commandsBySLM) {
		this.commandsBySLM = commandsBySLM;
	}

	public String getCommandsByADM() {
		return commandsByADM;
	}

	public void setCommandsByADM(String commandsByADM) {
		this.commandsByADM = commandsByADM;
	}


	
	
	
	
	
	
	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}



	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRejectedBy() {
		return rejectedBy;
	}

	public void setRejectedBy(String rejectedBy) {
		this.rejectedBy = rejectedBy;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getRaisedDate() {
		return raisedDate;
	}

	public void setRaisedDate(String raisedDate) {
		this.raisedDate = raisedDate;
	}

	/* FOR DISPLAYING REQUEST lIST RASIED BY USER .. */
	public String getRaisedReqId() {
		return raisedReqId;
	}

	public void setRaisedReqId(String raisedReqId) {
		this.raisedReqId = raisedReqId;
	}

	public String getRequestorId() {
		return requestorId;
	}

	public void setRequestorId(String requestorId) {
		this.requestorId = requestorId;
	}

	public String getServiceId() {
		return serviceId;
	}

	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}

	public String getLastUpdatedOn() {
		return lastUpdatedOn;
	}

	public void setLastUpdatedOn(String lastUpdatedOn) {
		this.lastUpdatedOn = lastUpdatedOn;
	}

	public String getApprovedBy() {
		return approvedBy;
	}

	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}

	public String getStatus_Id() {
		return status_Id;
	}

	public void setStatus_Id(String status_Id) {
		this.status_Id = status_Id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRequestID() {
		return requestID;
	}

	public void setRequestID(String requestID) {
		this.requestID = requestID;
	}

	public String getRequestName() {
		return requestName;
	}

	public void setRequestName(String requestName) {
		this.requestName = requestName;
	}

	/* THIS FOR DISPLAYING REQUEST DETAILS FOR ACCESS LEVEL PERSION */
	/*
	 * private String req_Fname; private String req_Lname;
	 */
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

}
