package com.storm.demo;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
//import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class OrderAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	// private static final long serialVersionUID = 1L;
	private String productName;
	private int buyPrice;
	String imgUrl;
	int quantity;
	private String size;
	private String color;
	private int productCode;
	private String orderDate;
	private int orderNumber;
	private String recipientName;
	private String recipientPhoneNumber;
	private String recipientAddress;
	private String userId;
	private Map<String, Object> sessionmap;
	
	
	public String execute() {
		
		Connection conn = ConnectionDB.getConnection();
		
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
			// conn.close();
			 } catch (Exception e) {
			 e.printStackTrace();
			 }
			 }
		 }
		
		return "success";

	}

	public String execute1() {
		  
	     //int id = Integer.parseInt("ProductCode");
	     Connection conn = ConnectionDB.getConnection();
	     DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		 Date date = new Date();
		 orderDate = dateFormat.format(date);
	     System.out.println(orderDate);
	     int last_id = 0;
	     int id = 0;
	    
	     try {
	       
	       id = (int) sessionmap.get("userId");
	       String sql0 = "insert  into  orders (orderdate, status,comments,userId) values(?,?,?,?)";
	       PreparedStatement ps0 = conn.prepareStatement(sql0);
	       ps0.setString(1,orderDate);
	       ps0.setString(2,"Inprogress");
	       ps0.setString(3, "coming soon");
	       ps0.setInt(4, id);
	       ps0.executeUpdate();
	     
	       
	       ResultSet rs = ps0.executeQuery("select max(orderNumber) as last from orders");
	       if(rs.next()){
	    	   last_id = rs.getInt(1);
	       }
	       
	       String sql1 = "insert into orderdetails(ordernumber,productcode,quantityordered,recipientName,recipientPhoneNumber,recipientAddress) values(?,?,?,?,?,?)";
    	   PreparedStatement ps1 = conn.prepareStatement(sql1);
    	   ps1.setInt(1, last_id);
    	   ps1.setInt(2, productCode);
    	   ps1.setInt(3,quantity);
    	   ps1.setString(4,recipientName);
    	   ps1.setString(5,recipientPhoneNumber);
    	   ps1.setString(6,recipientAddress);
    	   ps1.executeUpdate();
    	   
    	   
	    
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
	

	
	public String execute2() {
	  
    Connection conn = ConnectionDB.getConnection();

    try {
	   Statement ps = conn.createStatement();
  	   String sql = "select ord.recipientName, ord.recipientPhoneNumber,ord.recipientAddress,p.productName,"
  	   + "p.productColor,p.productSize,p.buyPrice from products p inner join orderdetails ord"
  	   + " where p.productCode ="+productCode +"= "+" ord.productCode="+productCode;
  	   ResultSet rs = ps.executeQuery(sql);
	       
    while(rs.next()){
        recipientName = rs.getString("recipientName");
        recipientPhoneNumber = rs.getString("recipientPhoneNumber");
	    recipientAddress = rs.getString("recipientAddress");
	    productName = rs.getString("productName");
	    color = rs.getString("productColor");
	    size = rs.getString("productSize");
	    buyPrice = rs.getInt("buyPrice");
	    
	  
	 }
	    
  
	   } catch (Exception e) {
	     e.printStackTrace();
	  
	   } finally {
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
	
	public static void main(String[] args){
		OrderAction ord = new OrderAction();
		ord.execute1();
	}
	
	 
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
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
		
	}

}
