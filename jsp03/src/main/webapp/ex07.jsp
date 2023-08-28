<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<%
	HttpServletRequest httpRequest = (HttpServletRequest) pageContext.getRequest();
	/*
	pageContext객체가 기본 객체들에 대한 접근을 가능하게한다.
	pageContext.~~ 기본객체들의 접근할 수 있는 참조를 반환해주는 역할 
	pageContext에서 getRequest()를 꺼내 왔을 때, 
	*/
	if (request == httpRequest) {
		System.out.println("같음");
	/*
	자동으로 생성되는 request객체와 pageContext객체로 가져온 httpRequest가 동일한가?		
	*/
	}
	pageContext.getOut().println("브라우저로 내보내는 데이터 ");
	/*
	response가 응답할 내용을 가지고 있는 것이지 전달은 불가능함
	전달(출력)은 Out()이 실행한다.
	*/
	%>
</body>
</html>