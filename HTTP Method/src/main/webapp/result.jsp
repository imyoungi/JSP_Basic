<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
System.out.println("서버에서 확인 : "+name+","+age);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자가 보낸 값 확인 </title>
</head>
<body>
브라우저에 출력될 값<br>
<%=name %>(<%=age %>)님 안녕하세요!
</body>
</html>