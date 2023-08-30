<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

/*
완전한 맵은 아니고,키-값 형식으로 값을 저장할 수 있다. 
간단한 데이터를 저장하는 조각이다 
브라우저에 저장시키는 데이터 

쿠키는 서버에서 만들고 브라우저에 응답하여 저장하도록 하는 데이터 조각이다.
-> 브라우저 응답을 해주면 브라우저가 해당 쿠키라는 데이터를 기억하고 있다는 말 
그리고 브라우저는 저장된 쿠키를 해당 사이트에 자원 요청 시 항상 포함하여 전송한다.
브라우저가 쿠키를 만들어준 사이트를 요청할 때마다 포함해서 전송한다.
브라우저가 사이트를 이용하면서 유지할 값이 있다면 쿠키 사용 

1. 브라우저에서 서버로 자원을 요청
2. 서버에서 쿠키 생성 및 응답에 포함
3. 브라우저는 응답받은 쿠키를 저장소에 저장
4. 해당 사이트로 요청 시, 쿠키를 함께 전송
5. 요청에서 쿠키 정보를 확인 

쿠키의 구성요소
이름 : 쿠키이름
값 : 이름에 연결된 값
유효시간 : 초단위 시간(설정한 시간동안 유지, 설정하지 않으면 세션유지시간 동안만 유지)
도메인 : 쿠키를 생성한 사이트
경로 : 쿠키를 전송할 요청 url (일반적으로 최상위)
*/

Cookie cookie1 = new Cookie("name","KHY");
Cookie cookie2 = new Cookie("age", "25");
System.out.println("name : "+cookie1.getValue());
System.out.println("age : "+cookie2.getValue());
// 이건 의미가 없음! 아래처럼 응답에 쿠키를 추가해서 쿠키를 셋팅하는 것이 중요

response.addCookie(cookie1);
response.addCookie(cookie2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>쿠키생성
</body>
</html>