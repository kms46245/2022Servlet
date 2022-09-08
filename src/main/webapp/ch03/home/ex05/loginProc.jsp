<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(!id.equals("java")) {
%>
		<c:redirect url='login.jsp?loginMsg=idfail'/>
<%
	} else if(!pw.equals("java")) {
%>		
		<c:redirect url='login.jsp?loginMsg=pwfail'/>
<%
	} else {
		session.setAttribute("userId", id);
%>
		<c:redirect url='main.jsp?loginMsg=success'/>		
<%
	}
%>