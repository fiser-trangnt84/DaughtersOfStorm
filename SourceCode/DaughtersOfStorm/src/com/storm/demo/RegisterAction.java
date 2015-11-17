package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;
	
	
	public String execute() {
		
        String ret = ERROR;
        Connection conn = null;
        
        try {        	
      	  	conn = ConnectionDB.getConnection();
      	  	String sql = "INSERT INTO users(username, password, email)"
        	  		+ " VALUES (?, ?, ?)";
      	  	PreparedStatement ps = conn.prepareStatement(sql);
      	  	ps.setString(1, username);
      	  	ps.setString(2, password);
      	  	ps.setString(3, email);
      	  	int rs = ps.executeUpdate();
                              
      	  	while(rs != 0){
      	  		ret = SUCCESS;
      	  	}

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
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
