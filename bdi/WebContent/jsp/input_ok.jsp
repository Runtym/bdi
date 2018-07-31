<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] names = request.getParameterValues("name");

for(int i=0;i<names.length;i++){
	out.println((i+1) + "번째 : " + names[i] + "<br>");
}
%>
</body>
</html>