<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john");	// cookie value의 type은 text(string)이다.
	Cookie cookie2 = new Cookie("age", "12");
	//Object를 Cookie로 사용하기위해 serializing을 해준다.
	
	response.addCookie(cookie1);	// addCookie - 쿠키를 추가한다.(클라이언트에 저장하고 하는건 컴퓨터의 몫)
	response.addCookie(cookie2);
%>