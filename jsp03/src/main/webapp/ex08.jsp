<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application객체 예제</title>


<!-- Application객체는 우리가 톰캣을 통해서 실행했을 때, 최초로 생성되는 기본객체를 말한다.
 서버가 실행될 때 만들어져서 서버가 종료될 때까지 유효하다.
 즉, 우리가 서비스하고자 하는 이 사이트 자체! 어플리케이션을 나태내는 역할
 web.xml에 초기화 파라미터 지정이 필요 
 이 값들은 아래  application.getInitParameterNames() 여기서 꺼내서 사용 
 
 <!-- 초기화 파라미터 설정 
	<context-param>
		<param-name>param1</param-name>
		<param-value>value1</param-value>
	</context-param>
	
	<context-param>
		<param-name>param2</param-name>
		<param-value>value2</param-value>
	</context-param>
	-->
</head>
<body>
	<%
	Enumeration enumData = application.getInitParameterNames();
	while (enumData.hasMoreElements()) {
		String initParamName = (String) enumData.nextElement();
		String initValue = application.getInitParameter(initParamName);
		System.out.println(initParamName + " : " + initValue);
	}
	%>
	applicaton 객체 예제<br> 
	초기화 파라미터 확인<br> 
	서버정보 :<%= application.getServerInfo() %><br>
	서블릿 메이저 버전 : <%= application.getMajorVersion() %><br>
	서블릿 마이너 버전 : <%= application.getMinorVersion() %>

</body>
</html>