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
	
	public StringBuilder getTableString(String type,String uiId) {
		Connection con = null;
		StringBuilder sb = new StringBuilder();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			Statement stmt = con.createStatement();
			String sql = "select \r\n" + 
					"uiNo, uiId, uiPwd, uiName,uiAge,\r\n" + 
					"depCode, uiEtc\r\n" + 
					" from user_info";
			if(uiId!=null && !uiId.equals("")) {
				sql += " where " + type  + " like '%" + uiId + "%'";
			}
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				sb.append("<tr>");
				sb.append("<td>" + rs.getString("uiNo") + "</td>");
				sb.append("<td>" + rs.getString("uiId") + "</td>");
				sb.append("<td>" + rs.getString("uiPwd") + "</td>");
				sb.append("<td>" + rs.getString("uiName") + "</td>");
				sb.append("<td>" + rs.getString("uiAge") + "</td>");
				sb.append("<td>" + rs.getString("depCode") + "</td>");
				sb.append("<td>" + rs.getString("uiEtc") + "</td>");
				sb.append("</tr>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sb;
	}
}
