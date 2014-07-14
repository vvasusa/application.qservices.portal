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

	public String[] getEmailAddress() {
		String[] names = new String[4];
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
				// System.out.println(names[i]);
				i++;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return names;

	}

	
}
