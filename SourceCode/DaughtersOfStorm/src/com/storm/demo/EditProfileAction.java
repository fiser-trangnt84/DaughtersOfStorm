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
	private String fullName;
	private String email;
	private String phoneNumber;
	private String address;
	private String userId;
	private String check;
	
    public String getfullName() {
			return fullName;
		}

	public void setUsername(String fullName) {
		this.fullName = fullName;
	}

	public String demo(){
		return SUCCESS;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getName() {
		return fullName;
	}
	public void setName(String Name) {
		this.fullName = Name;
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
	
	public void getSession(){
        HttpServletRequest request=ServletActionContext.getRequest();  
        HttpSession session=request.getSession();  
        userId = (String)session.getAttribute("userId");
    }

	public String execute(){
			getSession();
            setCheck("form1");
            String ret = ERROR;
	        Connection conn = null;
		try {
                  
			conn = ConnectionDB.getConnection();
			
			String sql="UPDATE users SET fullName = ?,email=?, phoneNumber=?, address=? where userId = ?" ;
			PreparedStatement ps = conn.prepareStatement(sql);
      	  	ps.setString(1, fullName);
      	  	ps.setString(2, email);
      	  	ps.setString(3, phoneNumber); 
            ps.setString(4, address); 
            ps.setString(5, userId); 
      	  	int rs = ps.executeUpdate();
      	  	if (rs != 0){
      	  		ret = SUCCESS;
      	  		addActionMessage("Update success!");
      	  	}
      	  		
        } catch (Exception e) {
        	e.printStackTrace();
        }
        return ret;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}
}
