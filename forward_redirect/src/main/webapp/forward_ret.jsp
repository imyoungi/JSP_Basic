<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
포워드 결과<br>
요청 url부분은 변경되지 않고 request객체도 유지된다.<br>
<%="이름 : "+name %><br>
<%="나이 : "+age %><br>
</body>
</html>