<%-- directive - tomcat에게 안내한다. 이것은 JSP의 주석이다. --%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%	// scriptlet - java code의 영역이라고 표시해주는 문법
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- 주석은 영역내의 코드에 맞게 -->
<!-- 여기에서 만드는것은 멤버 메서드를 하나 만들고 있는 것이다. -->