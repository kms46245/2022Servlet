<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		String cart = "";
		
		Cookie[] cookies = request.getCookies();
		if(cookies.length < 2) {
			for(String product: products)
				cart += product + "/";			
			Cookie cookie = new Cookie("cart", cart);
			cookie.setMaxAge(60 * 60 * 24 * 7);
			response.addCookie(cookie);
		} else {
			for(Cookie hasCookie: cookies) {
				if(hasCookie.getName().equals("cart")) {
					cart += hasCookie.getValue() + "/";
				}
			}
			for(String product: products)
				cart += product + "/";
			Cookie cookie = new Cookie("cart", cart);			
			response.addCookie(cookie);
		}				
	} else {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>