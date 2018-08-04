<%@page import="java.sql.*"%>
<%@page import="com.bdi.test.UserService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

private static String driver = "org.mariadb.jdbc.Driver";
private static String url = "jdbc:mariadb://localhost:3306/dbi";
private static String id = "root";
private static String pwd = "12345678";

public List<Map<String,String>> getUserList(){

	Connection con = null;
	List<Map<String,String>> userList = 
			new ArrayList<Map<String,String>>();
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pwd);
		Statement stmt = con.createStatement();
		String sql = "select * from user_info";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			Map<String,String> user = 
					new HashMap<String,String>();
			user.put("uiNo", rs.getString("uiNo"));
			user.put("uiId", rs.getString("uiId"));
			user.put("uiPwd", rs.getString("uiPwd"));
			user.put("uiName", rs.getString("uiName"));
			userList.add(user);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return userList;
}
%>
<%
List<Map<String,String>> userList = getUserList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap.css"/>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap-theme.css"/>
<style>
	table td, th{
		text-align:center;
	}
</style>
</head>
<body>

<div class="container">
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<userList.size();i++){
	Map<String,String> user = userList.get(i);
%>
			<tr>
				<td><%=user.get("uiNo")%></td>
				<td><%=user.get("uiId")%></td>
				<td><%=user.get("uiPwd")%></td>
				<td><%=user.get("uiName")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>