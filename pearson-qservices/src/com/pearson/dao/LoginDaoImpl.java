package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.pearson.model.Admin1;
import com.pearson.model.AdminUser;

public class LoginDaoImpl implements LoginDao {

	@Autowired
	DataSource dataSource;

	@Override
	public boolean getLoginDeatils(String uname, String pass,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		HttpSession session1 = request.getSession();

		List<Admin1> list = new ArrayList<Admin1>();

		try {
			
			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select *from admin1");
			int i = 0;
			while (rs.next()) {
				System.out.println("FROM JSP PAGE  " + uname);
				System.out.println("FROM JSP PAGE " + pass);
				String username = (rs.getString("userId"));
				String password = (rs.getString("password"));
				System.out.println("FROM DATABASE userId " + username);
				System.out.println("FROM DATABASE userId " + password);
				i = i + 1;

				if (StringUtils.endsWithIgnoreCase(uname,
						rs.getString("userId"))
						&& StringUtils.endsWithIgnoreCase(pass,
								rs.getString("password"))) {
					String value = (rs.getString("userId"));

					/* SET SESSION HERE THE LOGIN TYPE - VISITOR, ADMIN, QA-LEAD */
					

					request.getSession(true).setAttribute("MySessionVariable",
							value);
					session1.setAttribute("sessionID", uname);
					return true;
				}

				// session.removeAttribute("MySessionVariable");
				request.getSession(false).removeAttribute("MySessionVariable");
				System.out.println("session;;;; invalidate()");

			}

		} catch (SQLException e) {
			e.printStackTrace();

		}

		/*
		 * String param = new String("logout");
		 * session.setAttribute("MySessionVariable", param);
		 */
		return false;
	}

}
