package com.storm.demo;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionDB {
	private static Connection conn = null;

	public static void createConnection(){
		String URL = "jdbc:mysql://localhost:3306/sale";
		String username = "root";
		String password = "1234";
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
			setConn(DriverManager.getConnection(URL, username, password));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int addUser(RegisterAction rgt){
		int result = 0;
		try {
			String sql = "INSERT INTO users (username, password, email) VALUES(?, ?, ?)";
			if(conn == null) createConnection();
			PreparedStatement ps = conn.prepareStatement(sql);  
			ps.setString(1,rgt.getUsername());  
			ps.setString(2,rgt.getPassword());  
			ps.setString(3,rgt.getEmail());  
			
			result = ps.executeUpdate();
		} catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public static ResultSet checkLogin(LoginAction login){
		ResultSet rs = null;
		try{
			String sql = "SELECT username FROM users WHERE"
        		  	+ " username = ? AND password = ?";
			if(conn == null) createConnection();
			PreparedStatement ps = conn.prepareStatement(sql);  
			ps.setString(1,login.getUsername());  
			ps.setString(2,login.getPassword());  
		
			
			rs = ps.executeQuery();
		} catch (Exception e){
			e.printStackTrace();
		}
		return rs;		
	}
	
	public static Connection getConnection() {
		if (conn == null) {
			createConnection();
		}
		return conn;
	}

	public static void setConn(Connection conn) {
		ConnectionDB.conn = conn;
	}
}
