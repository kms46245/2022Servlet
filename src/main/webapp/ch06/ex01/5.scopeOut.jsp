<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ol>
	<li>${scope}</li>	
	<%-- scope가 좁은데서 넓은순으로(오름차순)으로 value를 찾는다. --%>
	<%-- page -> request -> session -> application -> null 순으로 찾는다. --%>
	<li>${pageScope.scope}</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>