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
	
	public static final String REJECT_ADM="REJECTED BY ADM";
	public static final String REJECT_SLM="REJECTED BY SLM";
	public static final String REJECT_PL="REJECTED BY PL";
	public static final String REJECT_QA="REJECTED BY QA";
	
	public static final String APPROVED_STATUS_1="APPROVED BY QA";
	public static final String APPROVED_STATUS_2="APPROVED BY PL";
	public static final String APPROVED_STATUS_3="APPROVED BY SLM";
	public static final String APPROVED_STATUS_4="APPROVED BY ADM";
	
	
	public static final String USER_ONE="QA";
	public static final String USER_TWO="PL";
	public static final String USER_THREE="SLM";
	public static final String USER_FOUR="ADM";
	
	public static final String OVERALL_STATUS_2="PL Approve Pending";
	public static final String OVERALL_STATUS_3="SLM Approve Pending";
	public static final String OVERALL_STATUS_4="ADM Approve Pending";
	public static final String OVERALL_STATUS_5="Approved";
	
}
