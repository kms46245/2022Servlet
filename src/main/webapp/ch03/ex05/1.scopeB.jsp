<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= pageContext.getAttribute("one") %></li>
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li>
	<li><%= application.getAttribute("four") %></li>
</ul>

<%-- parameter는 client가 write한다.
	 attribute는 server가 wirte한다.
	 그렇기 때문에 파라미터는 읽기만 가능하다.--%>