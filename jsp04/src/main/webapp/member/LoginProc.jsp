<%@page import="javax.print.attribute.standard.JobOriginatingUserName"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부</title>
</head>
<body>
	<%
	/*
	1. 요청에서 파마리터 가져오기
	2. 아이디와 비밀번호 같으면 로그인 성공으로 처리
	  - 아이디기억하기 여부(리멤버 값)이 넘어왔다면 쿠키생성해서 저장 
	3. 아이디, 패스워드 같지 않다면다시 로그인 창으로 이동 
	4. 새로고침 후, 아이디 입력+ 아이디 기억하기 체크되어있어야 함 

	*/
	String username = request.getParameter("username");
	String userpw = request.getParameter("userpw");
	String remember = request.getParameter("remember");

	System.out.println(username);
	System.out.println(userpw);
	System.out.println(remember);

	if (username.equals("lee19") && userpw.equals("1234")) {
		System.out.println("로그인 성공!");
		if (remember != null) {
			Cookie rcookie = new Cookie("remember", username);
			rcookie.setMaxAge(60 * 60);
			response.addCookie(rcookie);
			System.out.println("1hr 아이디 기억하는 remember 쿠키 생성함 ");
		} else {
			Cookie noCookie = new Cookie("remember", "");
			noCookie.setMaxAge(0);
			response.addCookie(noCookie);
			System.out.println("1hr 아이디 기억하는 remember 쿠키 생성 선택 안함");
		}
		response.sendRedirect("loginSuccess.jsp");

	} else {
		response.sendRedirect("loginForm.jsp");
		System.out.println("로그인 실패 ");
	}
	%>


</body>
</html>