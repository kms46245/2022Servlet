<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='Post'>
	아이디<input type='text' name='id'>
	암호<input type='password' name='pw'> &nbsp;
	<input type='submit'>
</form>
<%
	String loginMsg = "";
	if(request.getParameter("loginMsg") != null) {
		 loginMsg = request.getParameter("loginMsg");
	}

	if(loginMsg.equals("idfail")) {
%>
	<br>
	아이디가 없거나 아이디가 java가 아닙니다.
<%
	} else if (loginMsg.equals("pwfail")) {
%>
	<br>
	암호가 틀렸습니다.
<%
	} else { }
%>
