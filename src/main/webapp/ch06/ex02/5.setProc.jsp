<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='fruit' value='사과'/>
<c:set var='fruit'>부사</c:set>	<%-- value를 속성으로 줄수도, 안에서 값으로 줘도 같다 --%>
${fruit}

<c:set var='fruit' scope='page'>사과</c:set>
<c:set var='fruit' scope='request'>딸기</c:set>
<c:set var='fruit' scope='session'>머루</c:set>
<c:set var='fruit' scope='application'>포도</c:set>

<jsp:forward page='5.setOut.jsp'/>