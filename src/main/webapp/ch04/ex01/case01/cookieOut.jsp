<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a><br>
<%
	Cookie[] cookies = request.getCookies(); // getCookies - 해당세션의 쿠키들을 가져온다.
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("name") || 
				cookie.getName().equals("age")) {
 %>
 			<%= cookie.getName() %>: <%= cookie.getValue() %><br>
 <%
		}
	}
 %>