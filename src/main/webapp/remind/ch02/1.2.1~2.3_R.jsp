<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.util.Date' %>
<%-- directive에는 필요한 타입을 나눠서 임포트 가능(한줄에 전부
	합쳐도 가능하지만 가독성이 떨어진다.) --%>
<h1>ch02.1 scriptlet</h1>
<%
	int num1 = 1;
	int num2 = 2;
%>

<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %>
<!-- 여기에서 만드는것은 멤버 메서드를 하나 만들고 있는 것이다. -->


<hr>
<h1>ch02.2 declaration</h1>
<%!
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	int num3 = 3; 	// 멤버 변수
%>
<%
	int num4 = 4;	// 지역 변수
%>
<%= num3 %> + <%= num4 %> = <%= add(num3, num4) %>

<hr>
<h1>ch02.3 import</h1>
<%
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %><br><%= date2 %>

