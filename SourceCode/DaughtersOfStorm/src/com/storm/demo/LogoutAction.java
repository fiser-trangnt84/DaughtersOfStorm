package com.storm.demo;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport {
	private int userId;
	private static final long serialVersionUID = 1L;

	public String execute() {
		String ret = ERROR;		
		int rs = ConnectionDB.doLogout(this);
		if (rs != 0){
			ret = SUCCESS;
		}
			
		return ret;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
