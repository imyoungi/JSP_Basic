<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post메서드로 호출</title>
</head>
<body>
	<form name="yourname" action="result.jsp" method="post">
		이름을 입력하세요. <input type="text" name="name" /><br>
		나이를 입력하세요. <input type="text" name="age" /> 
		<input type="submit" name="전송" />
	</form>
</body>
</html>