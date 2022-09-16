<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li>${user}</li> <%-- 보통처럼 부르게되면 객체의 toString을 부르게된다. --%>
	<li>${user.userName}</li>			<%-- (attribute.name).(속성)을 부르면 해당 속성의 value를 불러온다. --%>
	<li>${pageScope.user.userName}</li>
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
</ul>