<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="rDiv" style="background-color:red">
	저는 평범한 DIV입니다.
</div>
<input type="color" onchange="chColor(this)">
<div>
	Red : <input type="range" onchange="chCol()" 
	id="rColor" min="0" max="255"><br>
	Green : <input type="range" onchange="chCol()" 
	id="gColor" min="0" max="255"><br>
	Blue : <input type="range" onchange="chCol()" 
	id="bColor" min="0" max="255">
</div>
<script src="/common/sc1.js"></script>
</body>
</html>