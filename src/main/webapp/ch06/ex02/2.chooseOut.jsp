<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<%-- taglib_choose - when 단의 test에 조건식을 담는다. --%>
	<c:when test='${param.color == 1}'>빨강</c:when>
	<c:when test='${param.color == 2}'>노랑</c:when>
	<c:when test='${param.color == 3}'>파랑</c:when>
	<c:when test='${param.color == 1}'>RED</c:when>
	<%-- if와는 다르게 배타적이라 처음에 걸린 값을 출력한뒤 더이상 실행하지 않는다. --%>
</c:choose>