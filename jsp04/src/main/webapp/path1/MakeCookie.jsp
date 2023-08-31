<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

/*
완전한 맵은 아니고,키-값 형식으로 값을 저장할 수 있다. 
간단한 데이터를 저장하는 조각이다 
브라우저에 저장시키는(기억시키는) 데이터 

쿠키는 서버에서 만들고 브라우저에 응답하여 저장하도록 하는 데이터 조각이다.
-> 브라우저 응답을 해주면 브라우저가 해당 쿠키라는 데이터를 기억하고 있다는 말 
그리고 브라우저는 저장된 쿠키를 해당 사이트에 자원 요청 시 항상 포함하여 전송한다.
브라우저가 쿠키를 만들어준 사이트를 요청할 때마다 포함해서 전송한다.
(브라우저에 뭔가 기록해야할 때가 있을 수 있는데, 그때 쿠키나 세션을 사용함 )
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
/*
여기서 쿠키에 경로를 지정해줄 수 있다.
최상위 경로(getContextPath())에서 path1 이라는 폴더로 설정
path1쪽으로 요청할 때 사용하도록 등록된 것 
jsp04/cookie/viewCookie에선 age쿠키만 확인 가능 

이런 느낌으로 생각해보자(쿠키 경로 개념)
서비스 쿠폰 하나를 발급해줬는데 가게가 나눠져있어 카페/음식점
카페에만 유효할 수도, 음식점에서만 유효할 수도, 둘 다 유효할 수도 있는 이런 개념으로 설정하고 싶을 때,
쿠키에 path를 설정해줄 수 있다. name쿠키는 카페에만, age쿠키는 음식점에만 유효 이런 식으로 구분한 것 
*/
cookie1.setPath(request.getContextPath()+"path1");

System.out.println("name : "+cookie1.getValue());
System.out.println("age : "+cookie2.getValue());
// 여기까진 쿠키를 만들기는 했지만 브라우저에 기억하라고 주진 않은 상황 ->response에 포함 시키지 않음  

response.addCookie(cookie1);
response.addCookie(cookie2);

/* 응답에 쿠키를 추가하는 코드 
response 헤더에 셋팅된 쿠키 확인 가능

추후 새로 고침하면 request헤더에도 우리가 셋팅한 쿠키 기억되어 있음
-> 그것 때문에 서버에서 뭔가를 기억하라고 브라우저에 맡길 수 있음 
그래서 브라우저야 가지고 있어 그리고 나중에 나(서버)한테 요청할 때마다 같이 보내! 요런 느낌 

*/


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