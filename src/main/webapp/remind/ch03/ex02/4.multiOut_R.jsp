<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String[] letters = request.getParameterValues("letter");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>

<%-- 과제] letters를 iterating 해서 출력하라. --%>
<%
	if(letters != null)
		for(String letter : letters) {%>
		<%= letter %> &nbsp; <% } %> <br>	
<%= gender %><br>
<%
	if(jobs != null)
		for(String job : jobs) {%>
		<%= job %> &nbsp; <% } %> <br>
<%-- 값을 하나도 선택하지않고 실행하면
 	500 에러(서블릿 오류)가 발생하므로 if문으로 예외처리한다. --%>