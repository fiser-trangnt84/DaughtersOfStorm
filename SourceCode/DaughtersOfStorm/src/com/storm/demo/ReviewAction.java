package com.storm.demo;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ReviewAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = 1L;
	private Map<String, Object> sessionMap;
	private int rating;
	private int productCode;
	
	public String execute() {
		String ret = ERROR;
		Connection conn = null;
		try {
			if(productCode == 0){
				productCode = (int) sessionMap.get("productCode");
			}
			conn = ConnectionDB.getConnection();
			String sql = "SELECT * FROM votes WHERE productCode = " + productCode;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			int count = 1;
			if(rs.next()){
				count = rs.getInt(rating + 1) + 1;
				sql = "UPDATE votes SET ?stars = ? WHERE productCode = ?";
			} else {
				sql = "INSERT INTO votes(?stars, productCode) VALUES (?, ?)";
			}
			
			ps = conn.prepareStatement(sql);
			ps.setInt(1, rating);
			ps.setInt(2, count);
			ps.setInt(3, productCode);
			ps.executeUpdate();			
			ret = SUCCESS;
			
		} catch (Exception e){
			e.printStackTrace();
		}
		return ret;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.sessionMap = arg0;
	}
}
