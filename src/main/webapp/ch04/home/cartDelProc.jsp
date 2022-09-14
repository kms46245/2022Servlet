<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] products = request.getParameterValues("product");
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		String cart = "";
		for(Cookie hasCookie: cookies) {
			if(hasCookie.getName().equals("cart")) {
				cart = hasCookie.getValue();
			}
		}
	
		if(products != null) {
			for(String product: products) {
				%>
					<%=product %><br><%= cart %><br>
				<%	
				cart.replaceFirst(product, "");
			}
			%>
				<%= cart %><br>
			<%

			Cookie afterDelCookie = new Cookie("cart", cart);
			response.addCookie(afterDelCookie);
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>  <!-- set - attribute를 만드는 actiontag -->
<%
		}
	} else { 
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
<%--
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>
 --%>
