package com.pearson.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Register {

	@NotNull(message="not empty first name")
	@Size(min = 1, max = 30)
	private String firstName;
	@NotNull(message = "not empty first name")
	@Size(min = 1, max = 30)
	private String lastName;
	@NotNull(message = "not empty first name")
	@Email(message = "not empty first name")
	@NotEmpty(message = "not empty first name")
	private String email;
	@NotNull
	@Size(min = 10)
	private String phoneNo;
	
	private String address1;
	private String address2;
	private String address3;
	private String address4;
	public String getAddress4() {
		return address4;
	}

	public void setAddress4(String address4) {
		this.address4 = address4;
	}

	private String tempPass;
	private String fnerror;
	
	public String getTempPass() {
		return tempPass;
	}

	public void setTempPass(String tempPass) {
		this.tempPass = tempPass;
	}

	
	public String getFnerror() {
		return fnerror;
	}

	public void setFnerror(String fnerror) {
		this.fnerror = fnerror;
	}

	public String getLnerror() {
		return lnerror;
	}

	public void setLnerror(String lnerror) {
		this.lnerror = lnerror;
	}

	public String getPnoerror() {
		return pnoerror;
	}

	public void setPnoerror(String pnoerror) {
		this.pnoerror = pnoerror;
	}

	public String getEmailerror() {
		return emailerror;
	}

	public void setEmailerror(String emailerror) {
		this.emailerror = emailerror;
	}

	private String lnerror;
	private String pnoerror;
	private String emailerror;

private String error;

	public String getError() {
	return error;
}

public void setError(String error) {
	this.error = error;
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

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

}
