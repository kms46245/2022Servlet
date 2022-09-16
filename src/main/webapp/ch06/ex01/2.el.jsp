<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
String: ${"hello"} <br>
int: ${10} <br>
double: ${10.0} <br>
boolean: ${true} <br>
null: ${null} <%-- <%= null --%> <hr>
			  <!-- expression은 에러가난다. -->
\${ 5 * 2 }: ${ 5 * 2 } <br>
<!-- EL내에서도 expression을 쓸수 있다. -->
${ 5 > 2 } <br>
${ 5 > 2 ? 5 : 2 } <br> 
${ 5 > 2 || 5 < 2}