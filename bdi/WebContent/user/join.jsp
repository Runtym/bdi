
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String age = request.getParameter("age");
String email = request.getParameter("email");
String[] hobby = request.getParameterValues("hobby");

String html = "니가 입력한 아이디는 " + id;
html += "<br>니가 입력한 비밀번호는 " + pwd;
html += "<br>니가 입력한 나이는 " + age;
html += "<br>니가 입력한 이멜주소는 " + email;
if(hobby!=null){
	html += "<br>니가 입력한 취미는 ";
	for(int i=0;i<hobby.length;i++){
		html += hobby[i] + ",";	
	}
}
out.println(html);
%>
</body>
</html>