<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<h3>A</h3>

<%-- url - 해당 페이지의 url을 지정 --%>
<c:url var='page' value='4.urlB.jsp'/>
<a href='${page}'>이동</a><br><br><br>

${param.num}