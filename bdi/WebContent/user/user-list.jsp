<%@page import="com.bdi.test.UserService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String search = request.getParameter("search");
UserService us = UserService.getUS();
List<Map<String,String>> userList = us.getUserList(search);
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
	<div style="height:60px;padding:10px">
		<form>
			주소 : <input type="text" name="search">
			<button>검색</button>
		</form>
	</div>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>아이디</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<userList.size();i++){
	Map<String,String> user = userList.get(i);
%>
			<tr>
				<td><%=user.get("name")%></td>
				<td><%=user.get("age")%></td>
				<td><%=user.get("address")%></td>
				<td><%=user.get("id")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>