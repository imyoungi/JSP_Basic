<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청받음</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String[] sports = request.getParameterValues("sport");

	System.out.println("name : " + name);
	System.out.println("address : " + address);
	for (int i = 0; i < sports.length; i++) {
		System.out.println("sport : " + sports[i]);
	}

	/* Enumeration<String> enumData = request.getParameterNames();
	while(enumData.hasMoreElememts()){
		String name = (String) enumData.nextElement();
		system.out.println("name" + name);
	} */

	//getParameterMap()
	/* Map paramMap = request.getParameterMap();
	   String[] paramName = (String[])paramMap.get("sport");
	   for(String paramMap : paramName){
		   System.out.println("param" + param);
	   }
	   */
	%>
	전송이 완료되었습니다.


</body>
</html>