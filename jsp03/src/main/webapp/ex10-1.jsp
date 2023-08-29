<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("name", "page scope");
/*
pageContext객체에 setAttribute로 원하는 데이터를 따로 저장
pageContext객체에 name이라는 이름으로 page scope라는 데이터 저장 이라는 뜻 
*/

request.setAttribute("name", "request scope");
session.setAttribute("name", "session scope");
application.setAttribute("name", "application scope");

System.out.println("첫 번째 페이지");
System.out.println("페이지 범위 : "+pageContext.getAttribute("name"));
/*
pageContext에 담았던 Attribute중에 name이라는 걸 가져와서 출력 
*/
System.out.println("요청범위 : "+request.getAttribute("name"));
System.out.println("세션범위 : "+session.getAttribute("name"));
System.out.println("어플리케이션범위 : "+application.getAttribute("name"));

//현재 요청(request)과 응답(response)을 다른 jsp로 전달
request.getRequestDispatcher("ex10-2.jsp").forward(request, response);
/*
request(요청정보)안에 RequestDispatcher(요청의 흐름을 조작할 수 있는 객체)를 가져와서
"ex10-2.jsp"파일로 forward 하겠다.

결국, 정리하면
ex10-1의 요청을 처리하고 그럼 request랑 response가 만들어져 있겠지
그리고 그 request랑 response를 ex10-2 에 그대로 전달하겠다.
ex10-2에서 받은 내용 처리 후 최종적으로 브라우저로 응답 -> 이 개념이 forward
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