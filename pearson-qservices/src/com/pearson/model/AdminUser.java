package com.pearson.model;

public class AdminUser {

	private String firstName;
	private String lastName;
	private String location;
	private String address;
	private String phoneNo;
	private String loginType;
	
/*	THIS FOR DISPLAYING REQUEST DETAILS FOR ACCESS LEVEL PERSION*/
	private String email;
	private String req_Fname;
	private String req_Lname;
	private String requesName;
	private String requesID;
	

	private String userId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReq_Fname() {
		return req_Fname;
	}
	public void setReq_Fname(String req_Fname) {
		this.req_Fname = req_Fname;
	}
	public String getReq_Lname() {
		return req_Lname;
	}
	public void setReq_Lname(String req_Lname) {
		this.req_Lname = req_Lname;
	}
	public String getRequesName() {
		return requesName;
	}
	public void setRequesName(String requesName) {
		this.requesName = requesName;
	}
	public String getRequesID() {
		return requesID;
	}
	public void setRequesID(String requesID) {
		this.requesID = requesID;
	}

}
