package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pearson.controller.LoginController;
import com.pearson.controller.RequestController;
import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;
import com.pearson.model.Requestor;

public class RequestDaoImpl implements RequestDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	LoginController loginController;

	@Override
	public AdminUser requestList(String id) {
		System.out.println("Request Dao" + id);
		AdminUser detail = null;

		try {
			if (id != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();

				ResultSet rs = statement
						.executeQuery("select * from admin_user");

				System.out.println("Request DaoImplvfdfg");
				while (rs.next()) {
					detail = new AdminUser();
					// String str1=(rs.getString(1));
					String username = (rs.getString("userId"));
					String phoneNo = (rs.getString("phoneNo"));
					String email = rs.getString("email");
					detail.setEmail(username);
					detail.setPhoneNo(phoneNo);
					detail.setEmail(email);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return detail;

	}

	@Override
	public void requestList() {
		// TODO Auto-generated method stub

		try {

			Connection connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select *from admin1");
			while (rs.next()) {
				// String str1=(rs.getString(1));
				String username = (rs.getString("userId"));
				String password = (rs.getString("password"));
				System.out.println("FROM DATABASE userId " + username);
				System.out.println("FROM DATABASE userId " + password);

				// Object ses_valu=session.setAttribute(h,uname);

				// System.out.println(ses_valu);

			}
		} catch (SQLException e) {
			e.printStackTrace();

		}

		System.out.println("Request controller");

	}

	@Override
	public boolean updateDetails(RequestForm requestForm,HttpServletRequest request) {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
		String id= (String) session.getAttribute("MySessionVariable");
		String email= (String) session.getAttribute("email");
		
		System.out.println("from request controller Update details"+email);
		

		try {
			String firstName = requestForm.getFirstname();
			String lastName = requestForm.getLastname();
			String email1 = requestForm.getEmail();
			String phoneNo = requestForm.getPhoneo();
			String requestId = requestForm.getRequestid();
			String requestName = requestForm.getRequestname();
			System.out.println("inside update details..."
					+ requestForm.getEmail());
		} catch (Exception e) {
			e.printStackTrace();

		}
		return true;

	}

}
