<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
System.out.println(name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트 결과</title>
</head>
<body>
	리다이렉트 결과
	<br> 브라우저에서 새로 요청한 것이므로 요청 url부분이 변경되고
	<br> request객체도 새로 생성된다(값 유지되지 않음 )
	<br>
	<%="redirect_ret.jsp에 request파라미터 확인 "%><br>
	<%="이름 : " + name%><br>
	<%="나이 : " + age%><br>
</body>
</html>