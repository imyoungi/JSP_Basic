<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청받음</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	System.out.println("전송받은 값 : " + name);

	if(name.equals("이기제")){
	%>

	<%=name%>님 환영합니다.

	<%
	} else {
	%>
	가입되지 않은 회원입니다.
	<%
	}
	%>
</body>
</html>