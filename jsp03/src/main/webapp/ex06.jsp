<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트(Redirect)</title>
</head>
<body>
나의 git으로 이동
<% response.sendRedirect("https://github.com/imyoungi/JSP_Basic"); %>

<!-- 
Http는 요청과 응답으로 이루어져 있음
그래서 req생성 시, response도 자동생성
sendRedirect 함수 같은 경우, 다른 html 화면을 보여줄 것이 아니라,
요청할 위치를 응답에 담아서 응답해주면, 우리의 부라우저는 sendRedirect로 전달된 값,
주소로 다시 어디에 요청함 같은 서버일 수도 있고 아닐 수도 있고 
-->
</body>
</html>