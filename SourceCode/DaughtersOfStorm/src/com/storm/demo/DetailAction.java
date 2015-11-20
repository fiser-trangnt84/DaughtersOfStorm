package com.storm.demo;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;

import com.storm.bean.Product;
import com.opensymphony.xwork2.ActionSupport;
public class DetailAction extends ActionSupport {
	
	private int productId;
	private String proName;
	private int proPrice;
	private String urlImg;
	
	
	public String getUrlImg() {
		return urlImg;
	}

	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String execute(){
		String ret = SUCCESS;
	    Connection conn = null;

	      try {
	    
	    	ConnectionDB cdb = new ConnectionDB();
		    conn = cdb.getConnection();
	        String sql = "SELECT * FROM products WHERE productCode = " + productId;
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        Product p = new Product();
	        while (rs.next()) {
	        	p = new Product();
	           p.setProductCode(rs.getInt("productCode"));
	           p.setProductName(rs.getString("productName"));
	           p.setBuyPrice(rs.getInt("buyPrice"));
	           proName = rs.getString("productName");
	           proPrice = rs.getInt("buyPrice");
	           urlImg = rs.getString("images");
	          
	        }
	       
	   System.out.println(p.getProductName());
	       
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
