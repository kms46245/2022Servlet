<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<%
	String numStr = request.getParameter("num");
	try {
		int num = Integer.parseInt(numStr);
%>
		<%= num * 2 %>
		<a href='4.numIn.jsp'>뒤로</a>
<%
	} catch(NumberFormatException e) {
	//String err = request.getQueryString();
	//if(err == null) {
%>	
	<c:redirect url='4.numIn.jsp?msg=Input number.'/>
<%
	}
%>
	<%-- out에서 in으로 넘어가는 것 같이
		 예외처리(새업무가 시작된다)는 redirect가 적당하다. --%>
	<%-- 과제] numIn.jsp form에 에러메세지(영어)를 출력하라. --%>
	<!--<c:redirect url='4.numIn.jsp?name="error"'/> -->