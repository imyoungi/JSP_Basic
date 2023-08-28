<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력폼</title>
</head>
<body>
	<form action="ex04-result.jsp" method="post">
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="address" placeholder="주소" ><br>
		좋아하는 스포츠
		<input type="checkbox" name="sport" value = "축구">축구
		<input type="checkbox" name="sport" value = "배구">배구
		<input type="checkbox" name="sport" value = "야구">야구
		
		<input type="submit" value="전송">
	</form>
</body>
</html>