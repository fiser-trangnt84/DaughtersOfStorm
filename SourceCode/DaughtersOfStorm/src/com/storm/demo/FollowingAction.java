package com.storm.demo;

import java.sql.*;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.storm.bean.Product;

public class FollowingAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int userId;
	public ArrayList<Product> arrProduct= new ArrayList<>(); 
	
	//export database
	public String excute() {
		String ret= ERROR;
		Connection conn = ConnectionDB.getConnection();
		try {	
			int id =userId;
			arrProduct = new ArrayList<Product>();
		    String sql = "SELECT P.* FROM products P JOIN favoritelists F"
		        	+ "ON P.productCode = F.productCode WHERE F.userId = ?";
		    PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setInt(1, id);
		    ResultSet rs = ps.executeQuery();
		    Product p = new Product();

		    while (rs.next()) {
		        p = new Product();
		        p.setProductCode(rs.getInt("productCode"));
		        p.setProductName(rs.getString("productName"));
		        p.setQuantityInStock(rs.getInt("quantityInStock"));
		        p.setImages(rs.getString("images"));
		        p.setBuyPrice(rs.getDouble("buyPrice"));
		        p.setSaleOff(rs.getDouble("saleOff"));
		        arrProduct.add(p);  
		        ret = SUCCESS;
		    }
		} catch (Exception e) {
		    e.printStackTrace();
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
	

