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
out.write("니가 입력한 ID : " + id);
out.write("니가 입력한 비밀번호 : " + pwd);
%>
</body>
</html>