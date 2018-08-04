<%@page import="com.bdi.test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
String uiId = request.getParameter("uiId");
String type = request.getParameter("type");
out.println("니가 검색한 " + type + " : " + uiId);
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
			<select name="type">
				<option value="uiNo" >번호</option>
				<option value="uiId" >아이디</option>
				<option value="uiName" >이름</option>
				<option value="uiAge" >나이</option>
				<option value="uiEtc" >비고</option>
			</select> 
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
StringBuilder sb = udao.getTableString(type,uiId);
out.println(sb.toString());
%>
		</tbody>
	</table>
</div>

<script>
	var type = "<%=type%>";
	if(type!="null"){
		document.querySelector("select option[value=" + type + "]").selected = true;
	}
</script>
</body>
</html>