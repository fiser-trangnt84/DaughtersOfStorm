package com.storm.demo;

import java.sql.*;
import java.util.Map;  
import org.apache.struts2.interceptor.SessionAware;  
import java.sql.Statement;

public class ProfileAction implements SessionAware {
	private Map<String, Object> sessionmap;
	private String Name;
	
	private String Email;
	private String phoneNumber;
	private String address;
	private String Username;
	private String check;
   
    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

	public String execute(){
        check ="form1";
		int id;     
		Connection A= ConnectionDB.getConnection();
		try {
			id = (int) sessionmap.get("userId");
			Statement B= A.createStatement();
			String C="select fullName,email,phoneNumber,address,userName from users where userId = "+id  ;
			ResultSet D= B.executeQuery(C);//
			while(D.next()){
				Name = D.getString("fullName");
				Email = D.getString("email");
				phoneNumber = D.getString("phoneNumber");
				address = D.getString("address");
				Username = D.getString("userName");
				sessionmap.put("username", Username);
			}
 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "success";
		
	}
        @Override
    public void setSession(Map<String, Object> map) {
        this.sessionmap = map;  
        
    }
    
    public String edit(){
        execute();
        check = "form2";
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


}
