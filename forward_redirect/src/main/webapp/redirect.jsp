<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
System.out.println("redirect.jsp에서 request파라미터 확인");
System.out.println("이름 : "+name);
System.out.println("나이 : "+age);
System.out.println("redirect_ret으로 다시 요청하라고 응답해줌 ");
response.sendRedirect("redirect_ret.jsp");
/*
응답을 해준다. 다시 요청할 것을 redirect_ret.jsp라는 파일을 요청해라 
(근데 이건 새로 요청하는 것임! 따라서 리다이렉트 결과와 같은 내용의 결과 출력된다)
*/

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>