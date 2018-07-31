<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public String test(){
	return "난 테스트 함수!!";
}
%>
<%
String str = test();
%>
<%=str%>