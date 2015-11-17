package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.storm.demo.ConnectionDB;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username;
    private String password;
    private String name;
    
    // Check login with username and password
    public String execute() {
    	
        String ret = ERROR;
        Connection conn = null;

        try {      	  
          	conn = ConnectionDB.getConnection();
          	String sql = "SELECT username FROM users WHERE"
        		  	+ " username = ? AND password = ?";
          	PreparedStatement ps = conn.prepareStatement(sql);
          	ps.setString(1, username);
          	ps.setString(2, password);
          	ResultSet rs = ps.executeQuery();

          	while (rs.next()) {
            	name = rs.getString("username");
             	System.out.println(name);
             	ret = SUCCESS;
          	}
        } catch (Exception e) {
      	  	System.out.print(e.toString());
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
}
