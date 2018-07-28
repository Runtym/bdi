<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/html/write.jsp" onsubmit="return check()">
	<table border="1">
		<tr>
			<th colspan="2">글쓰기</th>
		</tr> 
		<tr>
			<th>제목</th>
			<td>
				<input type="text"  maxlength="5" 
				required>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea cols="40" rows="20">
				</textarea> 
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" disabled></td>
		</tr>
		<tr>  
			<td colspan="2" style="text-align:center"><button>등록</button></td>
		</tr>
	</table>	
</form>
</body>
</html>