<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random number</title>
</head>
<body>
	<br>
	<b>Server 처리 값</b>
	</br> Now is
	<%=new java.util.Date()%>
	<br>1번 :
	<%=new java.util.Random().nextInt(100)%>
	</br>
	<br>2번 :
	<%=new java.util.Random().nextInt(100)%>
	</br>
	<br>3번 :
	<%=new java.util.Random().nextInt(100)%>
	</br>
</body>
</html>

<%--
JSP는 HTTP프로토콜을 기반으로 하는 서비스하기 위한 프로그램을 만드는 것
웹서비스는 request와 response로만 동작한다.
java와 다르게 메인함수라는 개념이 없음
즉, 특징 JSP파일 하나만 선택해서 실행하는 것이 아니라, 그냥 이 프로젝트 전체를 서버로 서비스하도록 구동시키는 것 
--%>