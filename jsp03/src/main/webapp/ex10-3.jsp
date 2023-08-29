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
<!--setAttribute : 값 셋팅하기 
getAttribute : 값 가져오기 
 -->
하나의 요청범위 : <%=request.getAttribute("name") %><br>
하나의 세션범위 : <%=session.getAttribute("name") %><br>
<!-- 만약 엣지나 다른 브라우저에서 실행할 경우, null  -->
하나의 어플리케이션범위 :<%=application.getAttribute("name") %><br>
<a href="<%=request.getContextPath() %>">처음으로</a>
</body>
</html>