<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<%
	String[] products = request.getParameterValues("product");
	
	if(products != null && products.length > 0) {
		List<String> cart = new ArrayList<>();
		
		if(session.getAttribute("cart") != null) {
			List<String> prevCart = (List<String>)session.getAttribute("cart");
			for(String product: prevCart)
				cart.add(product);
		}
		for(String product: products)
			cart.add(product);
			
		session.setAttribute("cart", cart);
	}
%>	
<c:redirect url='cartOut.jsp'/>