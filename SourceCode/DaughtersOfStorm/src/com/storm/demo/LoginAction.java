package com.storm.demo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
	private static final long serialVersionUID = 1L;
	private String username;
    private String password;

    
    // Check login with username and password
    public String execute(){
    	sessionMap.remove("username");
    	sessionMap.remove("userId");
        String ret = ERROR;
        ResultSet rs = ConnectionDB.doLogin(this);
        try {
			if(rs != null && rs.next()){
				ret = SUCCESS;
				sessionMap.put("userId", rs.getInt("userId"));
				sessionMap.put("username", rs.getString("username"));
				
				addActionMessage("Welcome to Storm!");
				rs.updateString("status", "online");
				rs.updateRow();
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
    
   
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}
}
