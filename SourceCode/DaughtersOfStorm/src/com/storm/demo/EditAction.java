package com.storm.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditAction extends ActionSupport{
	String userId;
	private String Name;
	
	private String Email;
	private String phoneNumber;
	private String address;
	private String Username;
	String password;
	public String execute(){
		int id;
	
		Connection A= ConnectionDB.getConnection();
		Map<String,Object> session= ActionContext.getContext().getSession();
		session.put("id", userId);
		
		try {
			
			Statement B= A.createStatement();
			String C="select password,fullName,email,phoneNumber,address,userName from users where userId = "+userId  ;
			ResultSet D= B.executeQuery(C);
			while(D.next()){
				Name = D.getString("fullName");
				Email = D.getString("email");
				phoneNumber = D.getString("phoneNumber");
				address = D.getString("address");
				Username = D.getString("userName");
				password = D.getString("password");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public static void main(String arg[]){
		Connection A= ConnectionDB.getConnection();
		System.out.println(A==null);
		
	}

}
