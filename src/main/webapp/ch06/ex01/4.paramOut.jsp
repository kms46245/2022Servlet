<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
	<%-- param.xx - xx의 파라미터값을 읽어온다. --%>
<p> ${param.userId == "java" ? param.userId: "손님"},환영합니다. </p> 
	<%-- EL내에서 산술연산자를 쓰더라도 알아서 int형으로 변환하여 계산해준다. --%>
<p> ${param.num1} + ${param.num2} = ${param.num1 + param.num2} </p>
<p> ${param.submitDay} </p>
	<%-- parameter의 value가 여러개일때는 iterating을 한다. --%>
<p>
	<%-- forEach - taglib에 저장된 iterator / 이 때 여러개의 value를 받을때는 paramValues로 적어준다.  --%>
	<c:forEach var='season' items='${paramValues.season}'>
		${season}
	</c:forEach>
</p>
