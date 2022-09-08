<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='core' uri="http://java.sun.com/jstl/core" %>
<%
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션");
	application.setAttribute("four", "애플리케이션");
	// 결국 데이터를 어디에 저장하느냐에 따라 사용 범위가 달라진다.
	//1.페이지하나당 2.업무하나당 3.유저 하나 당 4.애플리케이션 하나 당
%>

<core:redirect url='1.scopeB_R.jsp'/>