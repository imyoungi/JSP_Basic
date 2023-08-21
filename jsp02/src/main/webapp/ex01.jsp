<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP예제</title>
</head>
<body>
<%
     java.util.Random ran = new java.util.Random();
     int total =0;
     for(int i=0;i<=ran.nextInt(10);i++){
	    total += i;
     }
%>
1부터 랜덤 수까지의 합 : <%=total %>



</body>
</html>

<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
     int total =0;
     for(int i=0;i<=10;i++){
	    total += i;
     }
     
     <%=total %>
     
     서버가 브라우저에 응답해줄 때는 이 내용들은 없다
     이 내용들은 서버가 처리할 내용들인 것
     
     이건 처리결과만 html 형태로 응답하는 것 
     지금 결과는 정적이지만 반복적으로 요청할 경우 서버는 계속 코드 실행 중 
     
%>
	
--%>