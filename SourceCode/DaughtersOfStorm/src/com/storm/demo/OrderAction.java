package com.storm.demo;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class OrderAction extends ActionSupport {

	/**
	 * 
	 */
	// private static final long serialVersionUID = 1L;
	private String productName;
	private int buyPrice;
	String imgUrl;
	private int quantity;
	private String size;
	private String color;
	private int productCode;

	// DetailAction detail;

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String execute() {

		//int id = Integer.parseInt(productCode);
		Connection conn = ConnectionDB.getConnection();
		//System.out.println(productCode);
		try {
			Statement ps = conn.createStatement();
			String sql = "SELECT productname,buyprice,images FROM products WHERE productcode="+ productCode;
			ResultSet rs = ps.executeQuery(sql);

			while (rs.next()) {
				productName = rs.getString("productName");
				buyPrice = rs.getInt("buyPrice");
				imgUrl = rs.getString("images");

			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		finally {
			 if (conn != null) {
			 try {
			 conn.close();
			 } catch (Exception e) {
			 e.printStackTrace();
			 }
			 }
		 }
		
		return "success";

	}

	
	 public String input() {
	
	 //int id = Integer.parseInt("ProductCode");
	 Connection conn = ConnectionDB.getConnection();
	
	 try {
		 String sql = 
	     "insert  into  orderdetails (productcode, quantityordered) values(?,?)";
		 String sql1 = "select productCode from products WHERE" +
		 "productsize=? and productcolor=?";
		 PreparedStatement ps = conn.prepareStatement(sql);
		 PreparedStatement ps1 = conn.prepareStatement(sql1);
		 ps1.setString(1, size);
		 ps1.setString(2, color);
		 ResultSet rs = ps1.executeQuery(sql1);
		 while(rs.next()){
		 ps.setString(1,"1");
		 ps.setString(2,"quantity");
		 ps.executeLargeUpdate(sql);
		
	 }
	
	
	 } catch (Exception e) {
	 e.printStackTrace();
	
	 } finally {
	 if (conn != null) {
	 try {
	 //conn.close();
	 } catch (Exception e) {
	 e.printStackTrace();
	 }
	 }
	 }
	 return "success";
	
	 }
	

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getBuyPrice() {
		return buyPrice;
	}

	public void setBuyPrice(int buyPrice) {
		this.buyPrice = buyPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
}
