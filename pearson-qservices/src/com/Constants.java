package com;

public final class Constants {

	private Constants() {
		// restrict instantiation
	}

	/**********     JSP PAGE NAMES          ********/
	public static final String LOGIN_PAGE = "login";
	public static final String ERROR_PAGE = "error";
	public static final String INDEX_PAGE = "index";



/**************  ACCESS LEVEL PERSON    *************************/
	
	public static final String LEVEL_1 = "QA";
	public static final String LEVEL_2 = "PL";
	public static final String LEVEL_3 = "SLM";
	public static final String LEVEL_4 = "ADM";
	public static final String LEVEL_5 = "A";

	/**************  STATUS    *************************/
	
	public static final int STATUS_ONE = 1;
	public static final int STATUS_TWO= 2;
	public static final int STATUS_THREE = 3;
	public static final int STATUS_FOUR = 4;
	public static final int STATUS_FIVE = 5;
	
	public static final String APPROVED = "Approved";
	public static final String REJECTED = "Rejected";
	public static final String LOGIN_MODE_ADMIN = "admin";
	public static final String LOGIN_SUCCESS = "success";
	public static final String LOGIN_FAILED = "FAILED";
	
	public static final String LOGIN_MODE_REQUESTOR="requestor";
}
