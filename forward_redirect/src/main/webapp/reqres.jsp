<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반적인 요청</title>
</head>
<body>
	<form action="forward.jsp" method="get">
		이름 : <input type="text" name="name" /> 
		나이 : <input type="text"name="age" /> 
		<input type="submit" value="포워드 요청" />
	</form>
	<hr></hr>
	<form action="redirect.jsp" method="get">
	    이름 : <input type="text" name="name" /> 
		나이 : <input type="text"name="age" /> 
		<input type="submit" value="리다이렉트 요청" />
	</form>
</body>
</html>