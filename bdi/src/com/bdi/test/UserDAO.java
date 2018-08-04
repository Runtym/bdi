package com.bdi.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {
	private static String driver= "org.mariadb.jdbc.Driver";
	private static String url = "jdbc:mariadb://localhost:3306/dbi";
	private static String id = "root";
	private static String pwd = "12345678";
	
	public static void main(String[] args) {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			Statement stmt = con.createStatement();
			String sql = "select \r\n" + 
					"uiNo, uiId, uiPwd, uiName,uiAge,\r\n" + 
					"depCode, uiEtc\r\n" + 
					" from user_info";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.println("<tr>");
				System.out.println("<td>" + rs.getString("uiNo") + "</td>");
				System.out.println("<td>" + rs.getString("uiId") + "</td>");
				System.out.println("<td>" + rs.getString("uiPwd") + "</td>");
				System.out.println("<td>" + rs.getString("uiName") + "</td>");
				System.out.println("<td>" + rs.getString("uiAge") + "</td>");
				System.out.println("<td>" + rs.getString("depCode") + "</td>");
				System.out.println("<td>" + rs.getString("uiEtc") + "</td>");
				System.out.println("</tr>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
