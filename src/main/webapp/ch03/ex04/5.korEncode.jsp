<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='java.net.URLEncoder' %>
<%
   String text = URLEncoder.encode("한글", "UTF-8");
   String result = "5.target.jsp?msg=" + text; 
%>
<c:redirect url='<%= result %>'/>