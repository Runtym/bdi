<%@page import="com.bdi.test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
String uiId = request.getParameter("uiId");
String[] types = request.getParameterValues("type");


String typeStr = "";
if(types!=null){
	for(String str:types){
		typeStr += "," + str;
	}
	typeStr = typeStr.substring(1);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap.css"/>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container">
	<div style="margin:10px">
		<form>
			<input type="checkbox" value="uiId" name="type" id="id">
			<label for="id">아이디</label>
			<input type="checkbox" value="uiName" name="type" id="name">
			<label for="name">이름</label>
			<input type="checkbox" value="uiEtc" name="type" id="etc">
			<label for="etc">비고</label>
			: <input type="text" name="uiId" value="<%=uiId!=null?uiId:""%>">
			<button>검색</button>
		</form>
	</div>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>부서코드</th>
				<th>비고란</th>
			</tr>
		</thead>
		<tbody>
<%
UserDAO udao = new UserDAO();
StringBuilder sb = udao.getTableString(types,uiId);
out.println(sb.toString());
%>
		</tbody>
	</table>
</div>

<script>
	alert('<%=typeStr%>');
	var types = '<%=typeStr%>'.split(',');
	
	if(types!='null'){
		for(var type of types){
			document.querySelector('input[value=' + type + ']').checked = true;
		}
	}
</script>
</body>
</html>