package com.storm.demo;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import org.apache.struts2.ServletActionContext;
import java.sql.*;
import java.util.Map;  
import static org.apache.jasper.compiler.ELFunctionMapper.map;// mat cai tren do chu gi uk 
import org.apache.struts2.dispatcher.SessionMap;  
import org.apache.struts2.interceptor.SessionAware;  
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
        SessionMap<String,String> sessionmap;
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
		System.out.println("userID = " + userId);
		id = Integer.parseInt(userId);
        sessionmap.put("userId", userId);         
		Connection A= ConnectionDB.getConnection();
		System.out.println("userID1 = " + userId);
		try {
			
			Statement B= A.createStatement();
			String C="select fullName,email,phoneNumber,address,userName from users where userId = "+id  ;
			ResultSet D= B.executeQuery(C);//
			while(D.next()){
				Name = D.getString("fullName");
				Email = D.getString("email");
				phoneNumber = D.getString("phoneNumber");
				address = D.getString("address");
				Username = D.getString("userName");
				sessionmap.put("username", Username);
			}
 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "success";
		
	}
        @Override
    public void setSession(Map<String, Object> map) {
        sessionmap=(SessionMap)map;  
        
    }
    
    public String edit(){
        
        getSS();
        execute();
        check = "form2";
        return "ok";
    }

    public void getSS(){
        HttpServletRequest request=ServletActionContext.getRequest();  
        HttpSession session=request.getSession();  
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
