<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;");
%>
<!-- 과제] 위 스파게티 코드를 해결하라.
	 out객체를 쓰지않는 것으로 refactoring하라. -->
<%-- <%
	for(int i = 0; i < 10; i++)
		response.getWriter().print(i + "&nbsp;");
%>

<%!
	public String count() {
	String tmp = "";
		for(int i = 0; i < 10; i++)
			tmp += i + " ";
		return tmp;
	}
%>
<%= count() %> --%>


<%
	for(int i = 0; i < 10; i++) {
%>
	<%= i %>&nbsp;
<%
	}
%>