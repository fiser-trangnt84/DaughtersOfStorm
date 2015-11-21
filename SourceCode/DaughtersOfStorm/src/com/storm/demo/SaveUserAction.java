package com.storm.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SaveUserAction extends ActionSupport {
	String userId;
	private String Name;
	String password;

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String Email;
	private String phoneNumber;
	private String address;
	private String Username;
	public String execute(){
		System.out.println(Name);
		System.out.println(Email);
		
		String Id=(String)ActionContext.getContext().getSession().get("id");
		System.out.println(Id);
		
		Connection A= ConnectionDB.getConnection();
	
		
		try {
			
			Statement B= A.createStatement();
			String C="UPDATE sale.users SET userName='"+Username+"',password='"+password+"', email='"+Email+"', fullName='" +Name+"', phoneNumber='"+phoneNumber+"', address='"+address+"' WHERE userId="+Id; 
			B.execute(C);
			System.out.println(C);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
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
	
}
