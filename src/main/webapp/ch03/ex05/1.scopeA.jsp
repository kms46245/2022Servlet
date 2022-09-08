<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<%
	//setAttribute(name, value) - name이름에 value를 가진 속성을 준다.
	pageContext.setAttribute("one", "페이지");		// pageContext의 scope범위 - 해당 페이지가 실행되는 동안
	request.setAttribute("two", "리퀘스트");			// request의 scope범위 - client가 request를 서버로 보낼때 시작해서 client로 response를 보내기 전까지
	session.setAttribute("three", "세션");			// session의 scope범위 - session은 clinet와 server의 연결고리이고, (물리적인 연결은 connection 논리적인 연결은 session)
													// 						client가 서버에 request하면서 시작해서, client나 server에서 사용을 종료(timeout시간이 다되면)할때 까지					
	application.setAttribute("four", "애플리케이션");	// application의 scope범위 - tomcat이 실행되는 동안
	// 결국 데이터를 어디에 저장하느냐에 따라 사용 범위가 달라진다.
	//1.페이지하나당 2.업무하나당 3.유저 하나 당 4.애플리케이션 하나 당
%>
<c:redirect url='1.scopeB.jsp'/>