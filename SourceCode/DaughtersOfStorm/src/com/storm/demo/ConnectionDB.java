package com.storm.demo;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionDB {
	static Connection conn = null;

	static{
	String URL = "jdbc:mysql://localhost:3306/quynhtrangcute";
	String username = "root";
	String password = "sql123";
    try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(URL, username, password);
		System.out.println((conn==null) + "di ngu di");
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
    
	}
	public static Connection getConnection(){
		return conn;
	}
	public static void main(String[] args) {
		Connection A = getConnection();
		System.out.println(A==null);
		
	}
}
