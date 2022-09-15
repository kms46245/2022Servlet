<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main_R.html'>메인</a>
<%
	// 쿠키의 수정 메서드는 따로 없기때문에, 같은이름의 다른 value를 가진 쿠키를 덮어씌운다.
	Cookie cookie = new Cookie("age", "34");
	response.addCookie(cookie);
%>