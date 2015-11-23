package com.storm.demo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;
	
	
	public String execute() {
		
        String ret = ERROR;
        ResultSet rs = ConnectionDB.doRegister(this);
        
        try {
			if (rs != null && rs.next()){
				ret = SUCCESS;
				sessionMap.put("username", username);
				sessionMap.put("userId", rs.getInt(1));
				addActionMessage("Register success!");
			} else {
				addActionError("Fail to register!");
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.sessionMap = arg0;
		
	}

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}
}
