package com.storm.demo;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;
public class DetailAction extends ActionSupport {
	private String ProductName;
	private String ProductCode;
	private int BuyPrice;
	String imgUrl;
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String execute(){
		int id;
		id = Integer.parseInt(ProductCode);
		Connection A= ConnectionDB.getConnection();
		
		try {
			
			Statement B= A.createStatement();
			String C="select productName, buyPrice,images from products where productCode=" + id ;
			ResultSet D= B.executeQuery(C);
			while(D.next()){
				ProductName = D.getString("productName");
				BuyPrice = D.getInt("buyPrice");
				imgUrl= D.getString("images");
				
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "success";
		
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductCode() {
		return ProductCode;
	}
	public void setProductCode(String productCode) {
		ProductCode = productCode;
	}
	public int getBuyPrice() {
		return BuyPrice;
	}
	public void setBuyPrice(int buyPrice) {
		BuyPrice = buyPrice;
	}
	public static void main(String arg[]){
		Connection A= ConnectionDB.getConnection();
		System.out.println(A==null);
	}
	
}
