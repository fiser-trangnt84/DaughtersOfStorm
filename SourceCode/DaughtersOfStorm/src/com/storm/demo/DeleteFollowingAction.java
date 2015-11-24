package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteFollowingAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
	private static final long serialVersionUID = 1L;
	private int productCode;
    private int userId;

    public String execute(){
    	
        String ret = SUCCESS;
        userId = Integer.parseInt(sessionMap.get("userId").toString());
        Connection conn = ConnectionDB.getConnection();
        try{
        	String sql = " DELETE FROM favoritelists WHERE userId = ?" 
        			+ " and productCode=? ";
        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setInt(1, userId);
        	ps.setInt(2, productCode);
        	ps.executeUpdate();
        } catch (Exception e){
        	e.printStackTrace();
        }
        return ret;
    }
 
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}
}
