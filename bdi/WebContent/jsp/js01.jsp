<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="r1"></div>
<script>
	function Obj(){
		this.a = 3;
		var b = 4;
		
		this.getAdd = function(){
			return this.a + b;
		}
	}
	
	function Calc(a,b){
		var add = function(){
			return a+b;
		}
		var substract = function(){
			return a-b;
		}
		var multiple = function(){
			return a*b;
		}
		var divide = function(){
			return a/b;
		}
		
		this.cal = function(op){
			if(op==='+'){
				return add();
			}else if(op==='-'){
				return substract();
			}else if(op==='*'){
				return multiple();
			}else if(op==='/'){
				return divide();
			}else{
				alert('제대로 된 연산잔가 아닙니다.');
				return null;
			}
		}
	}
	
	var c = new Calc(4,2);
	alert(c.cal('-'));
	alert(c.cal('--'));
</script>
</body>
</html>