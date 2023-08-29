<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out</title>
<!-- Out객체는 response에 준비된 내용을 브라우저로 내보내는 역할
그리고 이 Out객체는 buffer가 있어서 조금 더 효율적으로 데이터를 전송할 수있도록 함 
  -->
</head>
<body>
	<%
int bufferSize = out.getBufferSize();
int remainSize = out.getRemaining();
int usedSize = bufferSize - remainSize;

System.out.println("전체 버퍼의 크기 : "+bufferSize+"byte");
System.out.println("사용한 버퍼의 크기 : "+remainSize+"byte");
System.out.println("남은 버퍼의 크기 : "+usedSize+"byte");
%>
버퍼예제<br>
남은 버퍼: <% out.println(remainSize+"byte"); %>
</body>
</html>