<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<%
	String loginMsg = request.getParameter("loginMsg");
	
	if(loginMsg != null) {
%>
		<%=session.getAttribute("userId")%>님 환영합니다.
		<a href='logout.jsp'>logout</a>
<%
	} else { 
%>
		<a href='login.jsp'>Login</a>
<%
	}
%>


<%-- 메인에서 로그인 링크를 누르면, 로그인 폼으로 이동한다.
	 로그인 폼에서, 아이디/비밀번호를 입력하고, 로그인 폼을 제출한다.
	 이때, 아이디/비밀번호는 java/java 이다.
	 
	 로그인 성공 시,
	 메인에 'java님, 환영합니다.'를 출력한다.
	 위 환영 메세지 옆에 로그아웃 링크를 나란히 출력한다.
	 위 로그아웃 링크를 누르면, 로그아웃 후, 메인으로 이동한다.
	 
	 로그인 실패 시,
	 로그인 폼으로 이동한다.
	 이 때, 위 폼 아래에 에러메세지를 출력한다.
	 --%>