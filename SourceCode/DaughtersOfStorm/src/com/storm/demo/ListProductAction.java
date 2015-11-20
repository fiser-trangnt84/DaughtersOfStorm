package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;
import com.storm.bean.Product;

public class ListProductAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String type;
	public ArrayList<Product> arrProduct= null; 
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String execute(){
		String ret = SUCCESS;
	    Connection conn = ConnectionDB.getConnection();

	      try {
	    	
	        arrProduct = new ArrayList<Product>();
	        String sql = "SELECT * FROM products WHERE ";
	        sql += "productType =  " +"'"+ type+"'";
	      
	        PreparedStatement ps = conn.prepareStatement(sql);
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
	         
	      } finally {
	         if (conn != null) {
	            try {
	              
	            } catch (Exception e) {
	            }
	         }
	      }
	      return ret;
		
	}
	
}
