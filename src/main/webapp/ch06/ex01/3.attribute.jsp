<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName} <br>	<%-- EL에 attribute의 이름을 쓰게되면 그 value를 바로 받는다. --%>
${hello} <br>		<%-- 없는 값을 찾게되면 빈값을 출력 --%>
${empty hello}<br>	<%-- empty - 내가 부르는 값이 null인지의 여부를 체크  --%>
${empty userName ? "무명" : userName}
${!empty userName ? userName : "무명"} <%-- 부정연산자도 적용 가능 --%>
