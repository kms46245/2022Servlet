<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main_R.html'>메인</a>
<%
	/* 수정과 마찬가지, 지우는 메서드가 따로없기때문에 같은이름의
		빈 값을 가진 쿠키를 만들고, setMaxAge(라이프사이클 지정)을
		0으로 줘 바로 없애는 식으로 삭제한다.
	*/
	Cookie cookie = new Cookie("age", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>