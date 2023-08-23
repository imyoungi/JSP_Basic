<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!private int num1 = 0;

	public void jspinit() {
		System.out.println("jspinit() 호출");
		/*
		Service 페이지가 최초로 load될 때 호출된다.
		페이지에 서비스를 수행하기 전에 초기화할 루틴을 삽입한다.
		혹은 초기 값을 셋팅해주는, 객체의 생성자 다음으로 동작하는 것 
		뭔가를 생성하거나 하는 것은 아님
		*/

	}

	public void jspDestory() {
		System.out.println("jspDestory() 호출");
		/*
		Service 페이지의 instance가 사라지는 시점에 호출된다.
		해당 페이지가 변경되어 새로이 load될 필요가 있을 때 이미 load된 instance는 
		destroy가 호출되고 새로운 instance의 ßInit이 호출된다.
		*/
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
int num2 = 0;
num1++;
num2++;
%>

	<ul>
		<li>num1 : <%=num1%></li>
		<li>num1 : <%=num1%></li>
	</ul>
</body>
</html>


<!-- 
기본적으로 jsp파일을 요청했을 때(request) 아래와 같이 서비스된다.
1. (서버)jsp파일 -> java파일로 바꾼다 -> class파일로 컴파일 
2. (메모리) 서버 메모리로 load (new 생성했다고 생각하기) 
3. 초기 값 셋팅 등을 위한 jspInit() 호출
4. jspservic() 함수 호출
5. jspservic() 호출이 되면서 html코드 만들어내고 만들어진 내용 response!
6. response된 html코드가 브라우저에서 해석이 되어 화면에보이게 된다.

case 1) 동일한 페이지 다시 호출할 경우 : service()만 다시 호출 

     2) jsp나 java에 변경사항이 발생했을 경우 : 그 파일을 다시 메모리에 올려야함
     즉, 메모리에서 객체를 삭제 후 다시 생성 해야한다는 뜻
     따라서 jspDestory() 호출 후, 객체 삭제되고 다시 처음부터 Init()->service() 호츌
     
     3) 서버가 종료되었을 경우 :  jspDestory() 호출, 메모리에 올라가 있는 서블릿 객체들 호출
     객체들 메모리에서 삭제 
    
     * jspDestory()가 메모리를 삭제하는 것은 아님
     제거하기 전에 정리해야 할 기능들을 갖게 우리가 오버라이딩해서 쓸 수 있는 메서드 
     

-->