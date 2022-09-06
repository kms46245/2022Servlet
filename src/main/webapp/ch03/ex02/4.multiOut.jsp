<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String[] letters = request.getParameterValues("letter");	//여러 파라미터의 value를 받을때에는 getparametervalues를 쓴다.
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>

<%-- 과제] letters를 iterating해서 출력하라. --%>
<%-- <% for(int i = 0; i < letters.length; i++) { %>
<%=	letters[i] %>
<% } %> --%>

<%
	if(letters != null)
	for(String letter : letters) {%>
<%=	letter %> &nbsp; <% } %> <br>

<%= gender %> <br>
<%
	if(jobs != null)
		for(String job: jobs) {
%>
<%= job %> &nbsp; <% } %>
<%-- 값을 하나도 선택하지않고 실행하면 500 에러(서블릿 오류)가 발생한다. --%>