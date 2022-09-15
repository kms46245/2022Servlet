<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] products = request.getParameterValues("product");
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		String cart = "";
		for(Cookie cookie: cookies) {
			if(cookie.getName().equals("cart")) {
				cart += cookie.getValue();
			}
		}
	
		if(products != null) {			
			for(String product: products) {				
				cart = cart.replaceFirst(product, "");
			}
			Cookie afterDelCookie = new Cookie("cart", cart);
			response.addCookie(afterDelCookie);
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
<%
		}
	} else { 
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>

<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>