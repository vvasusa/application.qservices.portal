package com.pearson.Helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

public class EmailHelper {

	@Autowired
	DataSource dataSource;
	
	Logger logger1 = Logger.getLogger(Thread.currentThread().getStackTrace()[0].getClassName());

	/*
	 * 
	 * public String[] getEmailAddress(String requestId,String actionValue) {
	 * String[] names = new String[6];
	 * 
	 * try { // Connection connection = dataSource.getConnection(); int j = 0;
	 * System.out.println("MySQL Connect Example."); Connection conn = null;
	 * String url = "jdbc:mysql://localhost:3306/"; String dbName = "tooldev";
	 * String driver = "com.mysql.jdbc.Driver"; String userName = "root"; String
	 * password = "1"; Class.forName(driver).newInstance(); conn =
	 * DriverManager.getConnection(url + dbName, userName, password); Statement
	 * statement = conn.createStatement();
	 * 
	 * if(StringUtils.endsWithIgnoreCase(actionValue,"Approve")){ ResultSet rs =
	 * statement.executeQuery("select email from adminuser"); int i=0; while
	 * (rs.next()) { names[i] = rs.getString("email");
	 * //System.out.println(names[i]); i++; System.out.println(" i value"+i);
	 * j=i; System.out.println(" j value"+j); } }
	 * 
	 * names = getRequestorEmail(statement,requestId,j,names);
	 * 
	 * } catch (Exception e) { System.out.println(e); } return names; }
	 * 
	 * public String[] getRequestorEmail(Statement statement, String
	 * requestId,int i,String[] names) { try{
	 * 
	 * ResultSet rs1 = statement.executeQuery(
	 * "SELECT email from requestor left join request on requestor.requestorId=request.RequestorId where request.RequestId='"
	 * + requestId + "'"); while (rs1.next()) { names[i]=rs1.getString("email");
	 * i++; System.out.println(names[i]); System.out.println("Requestor i"+i); }
	 * } catch(Exception e) {System.out.println(e);} return names; }
	 * 
	 * 
	 * 
	 * 
	 * }
	 */

	public List<String> getEmailAddress(String requestId, String actionValue,
			List<String> names) {

		// List<String> names = new ArrayList<String>();

		try {
			// Connection connection = dataSource.getConnection();
			int j = 0;
			System.out.println("MySQL Connect Example.");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "tooldev";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root";
			String password = "1";
			
			
			
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
			Statement statement = conn.createStatement();

			if (StringUtils.endsWithIgnoreCase(actionValue, "Approve")) {
				
				ResultSet rs = statement.executeQuery("select email from adminuser");
				int i = 0;
				while (rs.next()) {
					names.add(rs.getString("email"));
				}
			}

			names = getRequestorEmail(statement, requestId, j, names);

		} catch (Exception e) {
			System.out.println(e);
		}
		return names;
	}

	public List<String> getRequestorEmail(Statement statement,
			String requestId, int i, List<String> names) {
		try {

			ResultSet rs1 = statement
					.executeQuery("SELECT email from requestor left join request on requestor.requestorId=request.RequestorId where request.RequestId='"
							+ requestId + "'");
			while (rs1.next()) {
				names.add(rs1.getString("email"));
			}
		} catch (Exception e) {
			logger1.info("Email Helper"+e);
		}
		return names;
	}

}
