package com.storm.demo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;
public class EditProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String Name;
	
	private String userId;
	private String Email;
	private String phoneNumber;
	private String address;
	private String check;
	

	public String getCheck() {
		return check;
	}



	public void setCheck(String check) {
		this.check = check;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}
	

	public String demo(){
		return SUCCESS;
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
	

	public String execute(){
            String ret = ERROR;
	        Connection conn = null;
                
		try {
                  
			conn = ConnectionDB.getConnection();
			
			String sql="UPDATE users set fullName = ?,email=?, phoneNumber=?, address=? where userId = ?" ;
			PreparedStatement ps = conn.prepareStatement(sql);
      	  	ps.setString(1, Name);
      	  	ps.setString(2, Email);
      	  	ps.setString(3, phoneNumber); 
            ps.setString(4, address); 
            ps.setString(5, userId); 
      	  	ps.executeUpdate();
      	  	ret = SUCCESS;
      	  		
        } catch (Exception e) {
        	e.printStackTrace();
        	ret = ERROR;
        } finally {
        	if (conn != null) {
        		try {
        			conn.close();
        		} catch (Exception e) {
        			e.printStackTrace();
        		}
        	}
        }

        return ret;
	}
	
	
}
