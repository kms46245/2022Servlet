<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='4.numOut.jsp' method='post'>
	<input type='number' name='num'/>
	<input type='submit'/>
</form>
<%
	if(request.getQueryString() != null) {
%>
	한글
<% } %>