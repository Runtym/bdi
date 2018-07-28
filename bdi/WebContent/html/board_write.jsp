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
String title = request.getParameter("title");
String content = request.getParameter("content");

if(title==null){
%>
<form onsubmit="return check(this)">
	<table border="1">
		<tr>
			<th colspan="2">글쓰기</th>
		</tr> 
		<tr>
			<th>제목</th>
			<td>
				<input type="text"  maxlength="50" 
				id="title" name="title"
				required>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea cols="40" rows="20"
				id="content" name="content">
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
<script>
	function check(fObj){
		if(fObj.title.value.trim().length<3){
			alert("제목은 3글자 이상이여~~");
			fObj.title.value = "";
			fObj.title.focus();
			return false;
		}
		if(fObj.content.value.trim().length<2){
			alert("내용을 2글자는 써야지유~");
			fObj.content.value="";
			fObj.content.focus();
			return false;
		}
		return true;
	}
</script>
<%
}else{
	out.write("니가 쓴 제목 : " + title);
	out.write("<br>");
	out.write("니가 쓴 내용 : " + content);
}
%>
</body>
</html>