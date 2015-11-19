package com.storm.demo;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import java.sql.Statement;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;

import SupportClass.ContainerListPr;

public class ListProductAction extends ActionSupport {
	ArrayList<ContainerListPr> A = new ArrayList<>();

	public ArrayList<ContainerListPr> getA() {
		return A;
	}

	public void setA(ArrayList<ContainerListPr> a) {
		A = a;
	}

	public String execute() {
		Connection connect = ConnectionDB.getConnection();

		try {

			Statement B = connect.createStatement();
			String C = "select productCode,productName, buyPrice,images from products";
			ResultSet D = B.executeQuery(C);
			while (D.next()) {
				String name = D.getString("productName");
				String img = D.getString("images");
				double buyPrice = D.getDouble("buyPrice");
				int id=D.getInt("productCode");
				ContainerListPr E = new ContainerListPr(name, img, buyPrice,id);
				A.add(E);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "success";
	}

	public static void main(String[] args) {
		Connection connect = ConnectionDB.getConnection();
		ArrayList<ContainerListPr> A= new ArrayList<>();
		try {

			Statement B = connect.createStatement();
			String C = "select productCode,productName, buyPrice,images from products";
			ResultSet D = B.executeQuery(C);
			while (D.next()) {
				String name = D.getString("productName");
				String img = D.getString("images");
				double buyPrice = D.getDouble("buyPrice");
				int id=D.getInt("productCode");
				ContainerListPr E = new ContainerListPr(name, img, buyPrice,id);
				A.add(E);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(A.size());
	}

}
