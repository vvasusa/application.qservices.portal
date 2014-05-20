package com.pearson.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import com.pearson.controller.LoginController;
import com.pearson.model.AdminUser;
import com.pearson.model.RequestForm;

public class RequestDaoImpl implements RequestDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	LoginController loginController;

	@Override
	public AdminUser requestList(String id) {
		System.out.println("Request Dao" + id);
		AdminUser user = null;

		try {
			if(id==null){
				user = new AdminUser();
				String loginType = "null";
				user.setLoginType(loginType);
			}
			if (id != null) {
				Connection connection = dataSource.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement
						.executeQuery("select * from admin_user");
				System.out.println("Request DaoImplvfdfg");

				while (rs.next()) {
					user = new AdminUser();
					// String str1=(rs.getString(1));
					String username = (rs.getString("userId"));
					String phoneNo = (rs.getString("phoneNo"));
					String email = (rs.getString("email"));
					String loginType = "QA";
					user.setLoginType(loginType);
					user.setFirstName(rs.getString("firstName"));
					user.setLastName(rs.getString("lastName"));
					user.setPhoneNo(rs.getString("phoneNo"));
					user.setEmail(rs.getString("email"));
					user.setLocation(rs.getString("location"));
					user.setAddress(rs.getString("address"));
				}

				/****************** Displaying list of request-start ***********************/

				ResultSet rs1 = statement
						.executeQuery("select * from Requestor_details");
				while (rs1.next()) {
					user = new AdminUser();
					// String str1=(rs.getString(1));
					String loginType = "QA";
					user.setLoginType(loginType);
					String Req_Fname = (rs1.getString("firstName"));
					String Req_Lname = (rs1.getString("lastName"));
					String Email = (rs1.getString("email"));
					String PhoneNo = (rs1.getString("phoneNo"));
					String RequestName = (rs1.getString("requestName"));
					String RequestId = (rs1.getString("requestId"));
					user.setReq_Fname(Req_Fname);
					user.setReq_Lname(Req_Lname);
					user.setEmail(Email);
					user.setPhoneNo(PhoneNo);
					user.setRequesID(RequestId);
					user.setRequesName(RequestName);
				}

				/* displaying list of request-end */
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
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
	public RequestForm updateDetails(RequestForm requestForm,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("MySessionVariable");
		String email = (String) session.getAttribute("email");
		System.out.println("from request controller Update details" + email);
		try {
			requestForm.setFirstName(requestForm.getFirstName());
			requestForm.setLastName(requestForm.getLastName());
			requestForm.setEmail(requestForm.getEmail());
			requestForm.setPhoneNo(requestForm.getPhoneNo());
			requestForm.setRequestId(requestForm.getRequestId());
			requestForm.setRequestName(requestForm.getRequestName());
			System.out.println("inside update details..."
					+ requestForm.getEmail());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return requestForm;
	}

	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- START */
	@Override
	public String approveRequest(String id) {
		// TODO Auto-generated method stub
		
		return "welcome to approve";
	}
	/* TO APPROVE AND REJECT REQUEST BY ACCESS-LEVEL USER- end */

}
