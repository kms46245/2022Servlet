<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	User user = (User)request.getAttribute("user");
	user.setAge(2);
	//get으로 가져오면 object타입으로 읽게된다.
	// 그러므로 해당 클래스의 메서드를 사용하고싶다면, casting을 이용
%>
<jsp:forward page='4.requestC.jsp'/>