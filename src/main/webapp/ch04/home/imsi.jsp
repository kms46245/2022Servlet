<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% 
	Cookie cookie = new Cookie("cart", "");
	cookie.setMaxAge(0); 		// setMaxAge - 쿠키의 라이프사이클을 설정(해당 쿠키의 네임을 완전히 없애기 위해 사용)
	response.addCookie(cookie);
%>