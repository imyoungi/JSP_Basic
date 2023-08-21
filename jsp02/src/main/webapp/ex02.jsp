<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 문법 Tag</title>
</head>
<body>
	<h3>jsp 기본문법 예제</h3>

<% //자바코드를 작성할 수 있는 영역(연산, 처리기능 정의 )
	   String a = "APPLE";
	   String b = "BALL";
%>

C : <%= c %><br> 
<!-- 표현식 : 값을 출력(처리, 연산코드 사용 불가) -->
A : <%=a %><br>
<!-- <%= b %> 주석처리 되어있어 출력 안됌 -->
<%-- <%= b %> --%>


<%! //선언문(멤버필드, 멤버 메서드 정의)--> 잘 안씀 
String c = "CAT"; %>
</body>
</html>

<% //실제 결과는 jsp 기본문법 예제
// C: CAT
// A : APPLE%>