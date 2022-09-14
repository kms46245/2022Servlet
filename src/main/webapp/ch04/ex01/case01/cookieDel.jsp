<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	// 수정과 마찬가지로 지우는것이 없기때문에 같은이름의 새 쿠키를 만들어서 덮어씌운다.
	Cookie cookie = new Cookie("age", "");
	cookie.setMaxAge(0); 		// setMaxAge - 쿠키의 라이프사이클을 설정(해당 쿠키의 네임을 완전히 없애기 위해 사용)
	response.addCookie(cookie);
%>

<%-- 결과적으로 쿠키는 2가지 역할을 한다.
	1. 리스폰스에 쿠키를 담는다.
	2. 쿠키를 불러온다. --%>