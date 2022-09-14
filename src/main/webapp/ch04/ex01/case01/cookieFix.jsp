<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	// 쿠키의 수정은 따로없기때문에 같은이름의 다른 밸류 쿠키를 만들어 덮어씌운다.
	Cookie cookie = new Cookie("age", "34");
	response.addCookie(cookie);
%>