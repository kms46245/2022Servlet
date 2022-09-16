<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch06.ex01.User'%>
<%@ page import='java.time.LocalDate'%>
<%
	pageContext.setAttribute("user", new User(1, "최한석", LocalDate.now()));
	request.setAttribute("user", new User(2, "한아름", LocalDate.of(2022, 9, 17)));
	session.setAttribute("user", new User(3, "양승일", LocalDate.of(2022, 10, 16)));
	application.setAttribute("user", new User(4, "김필진", LocalDate.of(2025, 9, 16)));
%>
<jsp:forward page='6.userOut.jsp'/>