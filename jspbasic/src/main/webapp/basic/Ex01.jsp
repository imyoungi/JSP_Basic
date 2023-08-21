
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Now Date is <%= new java.util.Date() %> !
</body>
</html>

<%--
정적서비스 : HTML, CSS, JS => 웹서버 
동적서비스 : JSP, ASP, PHP  (매번 다른 결과가 나옴 ) 웹 어플케이션 서버 (WAS) 

웹서버에 a.jsp 파일을 보내면 읽어들릴 수가 없음 뭔데..?
그래서 WAS에 전달 및 처리 
결과는 HTML파일 만드는 데 활용한 하는 것 (브라우저에 보여주는 결과) 
항상 다른 결과 값을 보여줄 수 있는 프로그래밍인 것 
그리고 웹서버에서 일어나는 일은 브라우저 클라이언트 측에서 알 수 없음  =>백엔드 
--%>