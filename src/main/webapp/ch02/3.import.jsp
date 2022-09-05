<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.util.Date' %>
<!-- directive는 여러개 선언이 가능하다. / 필요한 타입을 받기위해 임포트는 위처럼 한다. -->
<%
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %><br>
<%= date2 %>