package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.model.AdminUser;

public class LoginDaoImpl implements LoginDao {

	@Autowired
	DataSource dataSource;

	public boolean getLoginDeatils() {

		List<String> list = new ArrayList<String>();

		String sql = "select * from ADMINUSER";

		try {
			Connection connection = dataSource.getConnection();
			Statement statement;
			statement = connection.createStatement();
			// statement.executeUpdate(sql);
			ResultSet rs = statement.executeQuery(sql);
			/*while (rs.next()) {
				list.add(rs.getString(1))(rs.getString(i)); // First Column
			}*/

			for (int i = 0; i < sql.length(); i++)

			{
				list.add(rs.getString(i));
				list.indexOf(0);
			}
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
	}
}
