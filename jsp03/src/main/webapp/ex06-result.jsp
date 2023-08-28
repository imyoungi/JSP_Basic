<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트(Redirect)</title>
</head>
<body>
	<%
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");

	if (userid.equals(userpw)) {
		System.out.println(userid + ": 로그인 성공");
	} else {
		System.out.println("가입되지 않은 회원입니다.");
		response.sendRedirect("ex06-Loginform.jsp");
	}
	%>

</body>
</html>