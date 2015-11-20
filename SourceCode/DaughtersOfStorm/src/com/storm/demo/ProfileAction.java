package com.storm.demo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;

import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;
public class ProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String Name;
	
	private String userId;
	private String Email;
	private String phoneNumber;
	private String address;
	private String Username;
	

	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String execute(){
		int id;
		id = Integer.parseInt(userId);
		Connection A= ConnectionDB.getConnection();
	
		
		try {
			
			Statement B= A.createStatement();
			String C="select fullName,email,phoneNumber,address,userName from users where userId = "+id  ;
			ResultSet D= B.executeQuery(C);
			while(D.next()){
				Name = D.getString("fullName");
				Email = D.getString("email");
				phoneNumber = D.getString("phoneNumber");
				address = D.getString("address");
				Username = D.getString("userName");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "success";
		
	}
	
	
	
	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name =Name;
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
