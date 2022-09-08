<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12));
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %><br>
<%= user %>

<!-- attribute의 속성값만을 받는 메서드들이 몇몇 존재하기때문에
	그런 특정상황에서는 쓰고 보통은 비효율적이라 사용하지 않는다. -->