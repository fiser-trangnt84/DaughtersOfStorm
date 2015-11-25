package com.storm.demo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;

import com.storm.bean.Product;
import com.opensymphony.xwork2.ActionSupport;
public class DetailAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = 1L;
	private int productCode;
	private String proName;
	private int proPrice;
	private String urlImg;
	private String design;
	private int quantitySold;
	private double average;
	private Map<String, Object> sessionMap;
	public String execute(){
		String ret = SUCCESS;
	    Connection conn = null;

	      try {
	    	if (productCode == 0){
	    		productCode = (int) sessionMap.get("productCode");
	    	} else {
	    		sessionMap.remove("productCode");
	    		sessionMap.put("productCode", productCode);
	    	}
	    	
		    conn = ConnectionDB.getConnection();
	        String sql = "SELECT * FROM products WHERE productCode = ?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, productCode);
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
	           setAverage(averageReviews(conn));
	        }
	       
	    } catch (Exception e) {
	    	System.out.print(e.toString());
	         
	    } 
	    return ret;
	
	}
	
	public double averageReviews(Connection conn){
		double temp = 0;
		String sql = "SELECT * FROM votes WHERE productCode =" + productCode;
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()){
				int oneStars = rs.getInt(6);
				int twoStars = rs.getInt(5);
				int threeStars = rs.getInt(4);
				int fourStars = rs.getInt(3);
				int fiveStars = rs.getInt(2);
				temp = (oneStars + twoStars * 2 + threeStars * 3 + fourStars * 4 + fiveStars * 5) * 2
						/(oneStars + twoStars + threeStars + fourStars + fiveStars);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return temp;
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

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public double getAverage() {
		return average;
	}

	public void setAverage(double average) {
		this.average = average;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.sessionMap = arg0;
	}
}
