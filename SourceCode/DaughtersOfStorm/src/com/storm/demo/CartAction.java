package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.storm.bean.Product;

public class CartAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int userId;
	public ArrayList<Product> arrProduct= null; 
	
	public String execute(){
		String ret = SUCCESS;
	    Connection conn = ConnectionDB.getConnection();

	      try {
	    	
	        arrProduct = new ArrayList<Product>();
	        String sql = "SELECT P.* FROM usercarts U JOIN products P "
	        		+ "ON P.productCode = U.productCode WHERE U.userId = ?";	        
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, getUserId());
	        ResultSet rs = ps.executeQuery();
	        Product p = new Product();
	        while (rs.next()) {
	        	p = new Product();
	           p.setProductCode(rs.getInt("productCode"));
	           p.setProductName(rs.getString("productName"));
	           p.setProductType(rs.getString("productType"));
	           p.setQuantityInStock(rs.getInt("quantityInStock"));
	           p.setImages(rs.getString("images"));
	           p.setBuyPrice(rs.getDouble("buyPrice"));
	           arrProduct.add(p);
	          
	        }
	      } catch (Exception e) {
	    	  System.out.print(e.toString());  
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
