<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
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
		if(msg != null)	out.println(msg);
	} 	
	else out.println("물건이 없습니다.");
%>