package com.storm.demo;

import java.sql.PreparedStatement;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
public class EditProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String Username;
	private String Name;
	
	private int userId;
	private String Email;
	private String phoneNumber;
	private String address;
	private String check;
	
       

    public String getUsername() {
			return Username;
		}

		public void setUsername(String username) {
			Username = username;
		}

        
	public String getCheck() {
		return check;
	}



	public void setCheck(String check) {
		this.check = check;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String demo(){
		return SUCCESS;
	}
	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name =Name;
	}
	
	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public void getSS(){
        HttpServletRequest request=ServletActionContext.getRequest();  
        HttpSession session=request.getSession();  
        Username =(String)session.getAttribute("username"); 
        userId = (int)session.getAttribute("userId");
    }

	public String execute(){
			getSS();
            check = "form1";
            String ret = ERROR;
	        Connection conn = null;
		try {
                  
			conn = ConnectionDB.getConnection();
			
			String sql="UPDATE users set fullName = ?,email=?, phoneNumber=?, address=? where userId = ?" ;
			PreparedStatement ps = conn.prepareStatement(sql);
      	  	ps.setString(1, Name);
      	  	ps.setString(2, Email);
      	  	ps.setString(3, phoneNumber); 
            ps.setString(4, address); 
            ps.setInt(5, userId); 
      	  	ps.executeUpdate();
      	  	ret = SUCCESS;
      	  		
        } catch (Exception e) {
        	e.printStackTrace();
        } 
        return ret;
	}
}
