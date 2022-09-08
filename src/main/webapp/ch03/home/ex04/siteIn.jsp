<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<!-- mine -->
<%-- <form action='siteProc.jsp'>
	<input type='radio' name='site' value='1'/> 네이버
	<input type='radio' name='site' value='2'/> 다음
	<input type='submit'/>
</form>

<% String error = request.getParameter("errorName"); %>
<%= error != null ? error : "" %> --%>

<!-- receive -->
<form action='siteProc.jsp'>
	<input type='radio' name='site' value='daum'>다음
	<input type='radio' name='site' value='naver'>네이버
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>