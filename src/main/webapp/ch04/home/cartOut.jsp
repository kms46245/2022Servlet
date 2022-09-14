<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<!-- String을 특정 단위로 나눠서 토큰화 시킬때 필요한 헤더 -->
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	// 쿠키들중 원하는 쿠키를 구별 한뒤 토크나이저로 나누고 토큰별로 카트에 입력
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/");
			while(st.hasMoreTokens())
				cart.add(st.nextToken());
		}
	}
	
	if(cart.size() > 0) {
%>
		<form action='cartDelProc.jsp' method='post'>
			<ul>
<%
				for(String product: cart) {
%>
					<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/></li>
<%
				}
%>
			</ul>
			<button type='submit'>빼기</button>
		</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
	} else out.println("물건이 없습니다.");
%>