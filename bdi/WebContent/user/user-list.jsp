<%@page import="com.bdi.test.UserService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String checkSel(String str1,String str2){
		if(str1==null){
			return "";
		}
		if(!str1.equals(str2)){
			return "";
		}
		return "selected";
	}
%>
<%
String search = request.getParameter("search");
String type = request.getParameter("type");
UserService us = UserService.getUS();
List<Map<String,String>> userList = us.getUserList(type, search);
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
			<select name="type">
				<option value="name" <%=checkSel(type,"name")%>>이름</option>
				<option value="age" <%=checkSel(type,"age")%>>나이</option>
				<option value="address" <%=checkSel(type,"address")%>>주소</option>
				<option value="id" <%=checkSel(type,"id")%>>아이디</option>
			</select> : <input type="text" name="search"
			value="<%=search!=null?search:""%>">
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