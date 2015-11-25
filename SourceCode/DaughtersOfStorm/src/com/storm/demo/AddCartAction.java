package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AddCartAction extends ActionSupport implements SessionAware {
    private Map<String, Object> sessionMap;
	private static final long serialVersionUID = 1L;
	private int productCode;
    private int userId;

    
    public String execute(){
        String ret = ERROR;
        if(!sessionMap.containsKey("userId")){
        	addActionError("You have to login first!");
        	return ret;
        }
        userId = (int) sessionMap.get("userId");
        Connection conn = ConnectionDB.getConnection();
        try{
        	String sql = "SELECT * FROM usercarts WHERE userId = " + userId;
        	PreparedStatement ps = conn.prepareStatement(sql);;
        	ResultSet rs = ps.executeQuery();
        	if (rs.next()){
        		int pd = rs.getInt("productCode");
        		if(pd != 0 && pd == productCode) {
        			return ret;
        		}
        	}
        	
    		sql = "INSERT INTO usercarts(cartId, productCode, userId)"
    				+ " VALUES (?, ?, ?)";
    		ps = conn.prepareStatement(sql);
    		ps.setInt(1, rs.getInt("cartId"));
    		ps.setInt(2, productCode);
    		ps.setInt(3, userId);
    		int result = ps.executeUpdate();   
    		
    		if (result != 0){
    			ret = SUCCESS;
    		}
        
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
