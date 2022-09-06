<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String text = request.getParameter("text");
	String number = request.getParameter("number");
	String date = request.getParameter("date");
	String checkbox = request.getParameter("checkbox");
	String radio = request.getParameter("radio");
	
	String text2 = request.getParameter("text2");
	String number2 = request.getParameter("number2");
	String date2 = request.getParameter("date2");
	String checkbox2 = request.getParameter("checkbox2");
	String radio2 = request.getParameter("radio2");
%>
<%= text %>  <%= text2 %><br>
<%= number %> <%= number2 %><br>
<%= date %> <%= date2 %><br>
<%= checkbox %> <%= checkbox2 %><br>
<%= radio %> <%= radio2 %><br>
<%-- 유저가 checkox radio를 체크했다고하면 on으로 표시된다 (value가없다면). --%>
<%-- 브라우저에서는 text number date는 기본값이(값이 없을때) empty string이고
	 checkbox radio는 기본값이 null이다. --%>