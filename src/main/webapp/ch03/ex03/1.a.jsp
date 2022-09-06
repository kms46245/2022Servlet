<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
	
%>
<%-- dispatcher.forward(a.request, a.response) -> a b 서블릿이 있다고 가정했을때, a가 가진 request와 response를 이용해
	 b 서블릿으로 이어지게 만들어준다.
	 includeAction는 res req를 넘겨주는 공통점이 있다 하지만,
	 includeAction은 a와 b를 합친다는 개념이고
	 forward는 a를 통해 b로 이동한다는 개념이다. --%>
	 