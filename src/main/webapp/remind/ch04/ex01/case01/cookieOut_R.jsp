<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main_R.html'>메인</a>
<%
	Cookie[] cookies = request.getCookies();

	for(Cookie cookie: cookies){
		if(cookie.getName().equals("name") ||
			cookie.getName().equals("age")) {
%>
			<%= cookie.getName() %>: <%= cookie.getValue() %>
<%
		}
	}
%>