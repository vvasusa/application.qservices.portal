package com.pearson.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Admin1 {

	private String rememberme;
	private String pwd;
	private String log;
	private String val;

	public String getVal() {
		return val;
	}

	public void setVal(String val) {
		this.val = val;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@NotEmpty(message = "Please enter your password.")
	private String password;

	public String getRememberme() {
		return rememberme;
	}

	public void setRememberme(String rememberme) {
		this.rememberme = rememberme;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getLog() {
		return log;
	}

	public void setLog(String log) {
		this.log = log;
	}

}
