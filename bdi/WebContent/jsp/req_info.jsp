<%@page import="java.lang.reflect.Method"%>
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
Method[] ms = request.getClass().getMethods();
Class c = request.getClass();
for(Method m:ms){
	String name = m.getName();
	if(name.indexOf("get")!=-1){
		if(m.getParameterCount()==0){
			try{
				Object o = m.invoke(request, null);
				out.println(name + ":" + o);
			}catch(Exception e){
				
			}
		}
	}
}
%>
</body>
</html>