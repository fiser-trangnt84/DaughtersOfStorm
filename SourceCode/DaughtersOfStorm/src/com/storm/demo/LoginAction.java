package com.storm.demo;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username;
    private String password;
    private String name;
    
    // Check login with username and password
    public String execute(){
    	
        String ret = ERROR;
        ResultSet rs = ConnectionDB.doLogin(this);
        try {
			if(rs != null && rs.next()){
				ret = SUCCESS;
				name = username;
				addActionMessage("Welcome to Storm!");
			} else {
				addActionError("Invalid account!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
    
    public void setName(String name){
    	this.name = name;
    }
    
    public String getName() {
    	return name;
    }
}
