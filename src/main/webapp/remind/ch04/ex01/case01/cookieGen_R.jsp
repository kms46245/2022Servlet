<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main_R.html'>메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john");
	Cookie cookie2 = new Cookie("age", "12");
	//Object를 cookie로 사용하기위해 serializing함.
	
	//addCookie - 쿠키를 추가한다(저장은 클라이언트에)
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>