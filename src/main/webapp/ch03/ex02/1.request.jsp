<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<%-- metadata를 받아온다. --%>
	<li><%= request.getRequestURL() %></li>	 <%-- getrequesturl - 해당 파일의 주소 --%>
	<li><%= request.getProtocol() %></li>	 <%-- getprotocol - 해당 파일의 프로토콜 --%>
	<li><%= request.getServerName() %></li>  <%-- getservername - 해당 서버의 이름 --%>
	<li><%= request.getContextPath() %></li> <%-- getContextPath - context path를 가져온다 --%>
	<li><%= request.getQueryString() %></li> <%-- getquerystring - 현재 값은 없다.(나중에 공부) --%>
	<li><%= request.getMethod() %></li> 	 <%-- getMethod -  현재 메소드의 타입--%>
</ul>