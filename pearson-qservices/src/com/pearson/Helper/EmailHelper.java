package com.pearson.Helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class EmailHelper {

	@Autowired
	DataSource dataSource;
	
	

	public String[] getEmailAddress(String requestId) {
		String[] names = new String[6];
		
		try {
			// Connection connection = dataSource.getConnection();

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
			ResultSet rs = statement
					.executeQuery("select email from adminuser");
			
			int i = 0;
			while (rs.next()) {
				names[i] = rs.getString("email");
				System.out.println(names[i]);
				i++;
			}
			
		names = getRequestorEmail(statement,requestId,i,names);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return names;
	}

	public String[] getRequestorEmail(Statement statement, String requestId,int i,String[] names) {
		try{
		
		ResultSet rs1 = statement.executeQuery("SELECT email from requestor left join request on requestor.requestorId=request.RequestorId where request.RequestId='"+ requestId + "'");
		while (rs1.next()) {
			names[i]=rs1.getString("email");
			i++;
			System.out.println(names[i]);
		}
		}
		catch(Exception e)
		{System.out.println(e);}
		return names;
	}

	
}
