package com.storm.demo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import com.storm.bean.Product;
import com.opensymphony.xwork2.ActionSupport;
public class DetailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int productId;
	private String proName;
	private int proPrice;
	private String urlImg;
	private String design;
	private int quantitySold;
	private double average;
	
	public String execute(){
		String ret = SUCCESS;
	    Connection conn = null;

	      try {
		    conn = ConnectionDB.getConnection();
	        String sql = "SELECT * FROM products WHERE productCode = ?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, productId);
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
	           quantitySold = rs.getInt("quantitySold");
	           design = rs.getString("productMaterial");	
	           averageReviews(conn);
	        }
	       
	    } catch (Exception e) {
	    	System.out.print(e.toString());
	         
	    } 
	    return ret;
	
	}
	
	public void averageReviews(Connection conn){
		String sql = "SELECT * FROM votes WHERE productCode =" + productId;
		 PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()){
				int oneStars = rs.getInt(2);
				int twoStars = rs.getInt(3);
				int threeStars = rs.getInt(4);
				int fourStars = rs.getInt(5);
				int fiveStars = rs.getInt(6);
				average = (oneStars + twoStars * 2 + threeStars * 3 + fourStars * 4 + fiveStars * 5)
						/(oneStars + twoStars + threeStars + fourStars + fiveStars) * 2;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		 
	}
	
	public int getQuantitySold() {
		return quantitySold;
	}

	public void setQuantitySold(int quantitySold) {
		this.quantitySold = quantitySold;
	}

	public String getDesign() {
		return design;
	}

	public void setDesign(String design) {
		this.design = design;
	}

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

	public double getAverage() {
		return average;
	}

	public void setAverage(double average) {
		this.average = average;
	}
}
