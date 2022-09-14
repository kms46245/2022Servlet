<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri="http://java.sun.com/jstl/core" %>
<% 
	String[] products = request.getParameterValues("product");
	
	if(products != null && products.length > 0) {
		List<String> cartProducts = (List<String>)session.getAttribute("cart");	// 원래 카트에있던거
		List<String> delProducts = new ArrayList<>();		// 지울거
	
		for(String product: products) 
			delProducts.add(product);
	
		for(String delProduct : delProducts) {	
			for(String cartProduct: cartProducts) {
				if(cartProduct.equals(delProduct)){
					cartProducts.remove(cartProduct);
					break;
				}
			}
		}
	
		if(cartProducts != null)
			session.setAttribute("cart", cartProducts);
	}
%>
<c:redirect url='cartOut.jsp'/>