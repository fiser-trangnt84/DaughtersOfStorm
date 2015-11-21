package com.storm.demo;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
	private int userId;
	private static final long serialVersionUID = 1L;

	public String execute() {
		String ret = ERROR;		
		int rs = ConnectionDB.doLogout(this);
		if (rs != 0){
			ret = SUCCESS;
			sessionMap.remove("username");
			sessionMap.remove("userId");
		}
			
		return ret;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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
