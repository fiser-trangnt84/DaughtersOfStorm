package com.storm.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.storm.bean.Product;

public class ListProductAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	private Map<String, Object> sessionMap;
	private String type;
	public ArrayList<Product> arrProduct= null; 
	
	public String execute(){
		String ret = SUCCESS;
	    Connection conn = ConnectionDB.getConnection();

	      try {
	    	if (type != null){
	    		sessionMap.put("type", type);
	    	} else {
	    		type = (String) sessionMap.get("type");
	    	}
	        arrProduct = new ArrayList<Product>();
	        String sql = "SELECT * FROM products WHERE productType =  " +"'"+ type+"'";
	      
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
      	} 
	      return ret;
		
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.sessionMap = arg0;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
