<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	User user = (User)request.getAttribute("user");
	user.setAge(2);
	// get으로 가져오면 object타입으로 읽힌다.
	// 그러므로 타입을 맞추려면 casting을 이용한다.
%>
<jsp:forward page='4.requestC_R.jsp'/>