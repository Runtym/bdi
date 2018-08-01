<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<Map<String,String>> userList = 
new ArrayList<Map<String,String>>();

for(int i=1;i<=10;i++){
	Map<String,String> user = new HashMap<String,String>();
	int rNum = (int)(Math.random()*50);
	user.put("name","홍길동" + i);
	user.put("age","" + rNum);
	user.put("address","서울 영등포구 여의도동 " + rNum + "번지");
	user.put("id", "hong" + rNum);
	userList.add(user);
}
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
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>아이디</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=1;i<=10;i++){
%>
			<tr>
				<td>홍길동<%=i%></td>
				<td><%=i+10 %></td>
				<td>서울 구로구 가산동 <%=i%>번지</td>
				<td>hone<%=i%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>