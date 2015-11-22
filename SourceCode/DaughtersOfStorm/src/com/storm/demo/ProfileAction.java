package com.storm.demo;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import org.apache.struts2.ServletActionContext;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String Name;
	
	private String userId;
	private String Email;
	private String phoneNumber;
	private String address;
	private String Username;
	private String check;
   
    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

        
	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String execute(){
        check ="form1";
		int id;
		String ret = ERROR;
		id = Integer.parseInt(userId);       
		Connection conn = null;	
		try {
			conn = ConnectionDB.getConnection();
			String sql ="SELECT * FROM users WHERE userId = " + id;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Name = rs.getString("fullName");
				Email = rs.getString("email");
				phoneNumber = rs.getString("phoneNumber");
				address = rs.getString("address");
				Username = rs.getString("userName");
				ret = SUCCESS;
			}
 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			addActionError("Fail to connect!");
		}
		return ret;
		
	}

    public String edit(){        
        getSession();
        String ret = execute();
        if (ret.equals("success")) {
        	check = "form2";
        } else {
        	addActionError ("Cannot change to form Edit!");
        }
        return ret;
    }

    public void getSession(){
        HttpServletRequest request = ServletActionContext.getRequest();  
        HttpSession session = request.getSession();  
        userId =(String)session.getAttribute("userId"); 
        
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
	
	
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}


}
