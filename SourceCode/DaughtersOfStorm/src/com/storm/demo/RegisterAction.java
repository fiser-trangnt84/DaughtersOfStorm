package com.storm.demo;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;
	
	
	public String execute() {
		
        String ret = ERROR;
        int rs = ConnectionDB.addUser(this);
        
        if (rs != 0){
        	ret = SUCCESS;
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
