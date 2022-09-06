<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;");
	// 안에 내장되어있는 imbedded object중 out을 이용했다.
%>

<%-- 과제] 위의 spaghetti code를 임베디드의 out을 쓰지않고 refactoring 하라--%>

<% for (int i = 0; i < 10; i++) { %>
	<%= i %> &nbsp;
<% } %>