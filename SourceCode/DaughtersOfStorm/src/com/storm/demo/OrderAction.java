package com.storm.demo;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.sql.Connection;
import java.sql.PreparedStatement;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class OrderAction extends ActionSupport implements SessionAware{
	private String productName;
	private int buyPrice;
	private int total;
	private String imgUrl;
	private int quantity;
	private String productSize;
	private String productColor;
	private int productCode;
	private String orderDate;
	private int orderNumber;
	private String recipientName;
	private String recipientPhoneNumber;
	private String recipientAddress;
	private int userId;
	private Map<String, Object> sessionmap;
	
	
	public String execute() {		
		Connection conn = ConnectionDB.getConnection();
		try {			
			productCode = (int) sessionmap.get("productCode");			
			String sql = "SELECT * FROM products WHERE productcode ="+ productCode;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				productName = rs.getString("productName");
				buyPrice = rs.getInt("buyPrice");
				imgUrl = rs.getString("images");
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return "success";

	}

	public String submitOrder() {
	     DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		 Date date = new Date();
		 orderDate = dateFormat.format(date);
		 Connection conn = ConnectionDB.getConnection();
	     try {	       
	       userId = (int) sessionmap.get("userId");
	       productCode = (int)sessionmap.get("productCode");
	       String sql = "insert  into  orders (orderdate, status,comments,userId) values(?,?,?,?)";
	       PreparedStatement ps = conn.prepareStatement(sql);
	       ps.setString(1,orderDate);
	       ps.setString(2,"Inprogress");
	       ps.setString(3, "coming soon");
	       ps.setInt(4, userId);
	       ps.executeUpdate();

	       ResultSet rs = ps.executeQuery("select max(orderNumber) as last from orders");
	       int orderNumber = rs.next()? rs.getInt(1):1;
	       
	       sql = "INSERT INTO orderdetails VALUES (?, ?, ?, ?, ?, ?)";
    	   ps = conn.prepareStatement(sql);
    	   ps.setInt(1, orderNumber);
    	   ps.setInt(2, productCode);
    	   ps.setInt(3,quantity);
    	   ps.setString(4,recipientName);
    	   ps.setString(5,recipientPhoneNumber);
    	   ps.setString(6,recipientAddress);
    	   ps.executeUpdate();
	     } catch (Exception e) {
	       e.printStackTrace();
	    
	     } 
	  return "success";
	   }
		 
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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
	
	public int getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientPhoneNumber() {
		return recipientPhoneNumber;
	}

	public void setRecipientPhoneNumber(String recipientPhoneNumber) {
		this.recipientPhoneNumber = recipientPhoneNumber;
	}

	public String getRecipientAddress() {
		return recipientAddress;
	}

	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}
	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

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

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.sessionmap = arg0;
		
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

}
