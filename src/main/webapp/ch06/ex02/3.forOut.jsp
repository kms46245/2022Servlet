<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<%-- varStatus - forEach의 속성 --%>
	<c:forEach var='fruit' items='${paramValues.fruit}' varStatus='status'>
		<li>${status.count}: ${fruit}, ${status.index} </li>
	</c:forEach>
</ul>