package com.storm.demo;

import java.sql.*;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.storm.bean.Product;

public class FollowingAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int ProductCode;
	private int FavoriteNumber;
	private int UserId;
	public ArrayList<Product> arrProduct= new ArrayList<>(); 
	
	//export database
	public String excute() {
		String ret= "ERROR";
		Connection conn = ConnectionDB.getConnection();
		try {	
			int id = userId;
		    String sql = "SELECT P.* FROM products P JOIN favoritelists F"
		        	+ "ON P.productCode = F.productCode WHERE userId = ?";
		    PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setInt(id);
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
		        }
		} catch (Exception e) {
		    System.out.print(e.toString());
		} 
		return ret;
	}

}
	

