<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두 번째 페이지</title>
</head>
<body>
하나의 페이지 범위 : <%= pageContext.getAttribute("name")%><br>
<!-- pageContext : 하나의 페이지 범위  -->
하나의 요청범위 : <%=request.getAttribute("name") %><br>
<!-- request : 현재(하나의) 요청이 만들어지면 유지되는 범위(request요청범위)    -->
하나의 세션범위 : <%=session.getAttribute("name") %><br>
<!-- session : 여러 브라우저가 서버에 요청을 할 건데, 요청할 때마다 서버에 만들어지는 기본객체 
세션이라는 객체는 브라우저 당 하나씩 존재, 서버에서는 어떤 브라우저인지 식별하는 용도로 사용   -->
하나의 어플리케이션범위 :<%=application.getAttribute("name") %><br>
<!-- application : 이 서버(어플리케이션) 자체, 서버 시작할 때 만들어지고, 서버 종료 될 때 사라지는 객체  -->
<a href="ex10-3.jsp">세 번째 페이지 요청</a>
</body>
</html>