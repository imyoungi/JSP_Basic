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
	String n1Str = request.getParameter("n1");
	String n2Str = request.getParameter("n2");

	int n1 = Integer.parseInt(n1Str);
	int n2 = Integer.parseInt(n2Str);

	int result = n1 + n2;
	%>

	<h4>연산결과</h4>
	<h3><%=n1%>+<%=n2%>=<%=result%></h3>

</body>
</html>