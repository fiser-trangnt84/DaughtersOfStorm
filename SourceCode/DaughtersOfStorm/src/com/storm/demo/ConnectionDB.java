package com.storm.demo;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionDB {
	static Connection conn = null;

	public static Connection getConnection(){
	String URL = "jdbc:mysql://localhost:3306/sale";
	String username = "root";
	String password = "1234";
    try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(URL, username, password);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
     return conn;
	}
}
