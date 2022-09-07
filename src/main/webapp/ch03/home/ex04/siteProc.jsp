<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<%	
	String numStr = request.getParameter("site");
	int site = Integer.parseInt(numStr);
%>
	<%= site %>
<%	
	if(site == 1) {
%>
	<c:redirect url='http://www.naver.com'/>
<% 	
	} else if(site == 2) {
%>
	<c:redirect url='http://www.daum.net'/>
<% } %>


<!-- 과제] 
다음 또는 네이버를 선택하고, 폼을 제출한다.
해당 사이트로 이동한다.
미완성된 폼을 제출하면, 다시 폼으로 돌아온다.
위의 경우, 폼 아래에 에러메세지를 출력한다.
-->