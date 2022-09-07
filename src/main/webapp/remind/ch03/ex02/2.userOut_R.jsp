<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String userName = request.getParameter("userName");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
	// 어떠한 타입으로 파라미터를 받든간에, string으로 변환하게된다.
%>
<h3>사용자</h3>
<ul>
	<li>이름: <%= userName %></li>
	<li>나이: <%= age %></li>
	<li>생일: <%= birthday %></li>
</ul>
<%-- form에서는 request의 파라미터를 쓴것이고
	 getparameter를 이용해 request의 파라미터를 읽는것이다. --%>
	 
<%-- request에 대해서는 url에 querystring으로써 저장된다.
	 그 url을 통해서 out에서 response하게 된다.
	 그리고 데이터는 헤더에 저장된다. --%>