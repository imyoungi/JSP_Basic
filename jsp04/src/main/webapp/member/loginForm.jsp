<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String chek = null;
String userid = "";
Cookie[] cookie = request.getCookies();
if (cookie != null) {
	for (int i = 0; i < cookie.length; i++) {
		if (cookie[i].getName().equals("remember")) {
	chek = "checked";
	userid = cookie[i].getValue();
	System.out.println(userid);
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<!-- 쿠키 이용해서 아이디 기억하기 구현 테스트  -->
	<form action="LoginProc.jsp" method="post">
		<input type="text" name="username" placeholder="아이디" value=<%= userid %>><br>
		<input type="text" name="userpw" placeholder="비밀번호"><br>
		아이디 기억하기<input type="checkbox" name="remember" value="chk" <%= chek %>><br>
		<!-- chk 여부로 저장할지 말지 여부 판단  -->
		<input type="submit" value="로그인">
	</form>
</body>
</html>