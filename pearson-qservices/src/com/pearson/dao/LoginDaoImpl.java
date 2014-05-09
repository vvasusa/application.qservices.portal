package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.model.Admin1;

public class LoginDaoImpl implements LoginDao {

	@Autowired
	DataSource dataSource;

	public boolean getLoginDeatils(String uname,String pass) {
		// static Logger logger = Logger.getLogger(LoginDaoImpl.class);
		

		List<Admin1> list = new ArrayList<Admin1>();
		//String sql = "select * from ADMINUSER";
		try {
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select *from admin1");

			while (rs.next()) {
//list.add(rs.getString());
//list.add(rs.getString("password"));
				/*list.add(rs.getString("userId"));
				list.add(rs.getString("firstName"));
				list.add(rs.getString("lastName"));
				list.add(rs.getString("email"));
				list.add(rs.getString("location"));
				list.add(rs.getString("address"));
				list.add(rs.getString("phoneNo"));*/
				// String str=(rs.getString(1));
				// String str1=(rs.getString(2));
				// System.out.println(str);
				// System.out.println(str1);
			}

			if (list != null) {
				for (Admin1 user : list) {
					
					/*USERNAME PASSWORD VALIDATION SECTION HERE*/
					
					System.out.println(user);
					System.out.println("inside dao");
				}
			}

			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return true;
	}

	
}
