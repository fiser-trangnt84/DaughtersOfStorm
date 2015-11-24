package com.storm.demo;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

public class ReviewAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int rating;
	private int productId;
	
	public String execute() {
		String ret = ERROR;
		System.out.println(productId + " " + rating);
		Connection conn = null;
		try {
			conn = ConnectionDB.getConnection();
			String sql = "SELECT * FROM votes WHERE productCode = " + productId;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			int count = 1;
			if(rs.next()){
				count = rs.getInt(rating + 1) + 1;
				sql = "UPDATE votes SET ?stars = ? WHERE productId = ?";
			} else {
				sql = "INSERT INTO votes(?stars, productCode) VALUES (?, ?)";
			}
			
			ps = conn.prepareStatement(sql);
			ps.setInt(1, rating);
			ps.setInt(2, count);
			ps.setInt(3, productId);
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

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}
}
