package com.storm.demo;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;
	private String name;
	
	
	public String execute() {
		
        String ret = ERROR;
        int rs = ConnectionDB.doRegister(this);
        
        if (rs != 0){
        	ret = SUCCESS;
        	setName(username);
        	addActionMessage("Register success!");
        } else {
        	addActionError("Fail to register!");
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
