package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")	// 해당 servlet의 고유한 url을 만들어준다. (중복이있으면 오류가난다)
public class C1_Get extends HttpServlet {
	//servlet을 쓰는이유 - java언어로 web app을 만들고싶어서
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) 	// get type - 클라이언트에 있어서 조회라는 의미에 가깝다. <-> Post type
		throws ServletException, IOException {	// 이 doGet의 call 주체는 tomcat이다.
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");	// response할 콘텐츠의 타입을 지정, response의 header에 저장
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d<p>", num1, num2, num1 + num2);
		
		// tomcat이 url을 자동으로 할당하지않기때문에 이대로는 404에러가 발생한다.
		// 그러므로 annotation을 추가해서 url을 직접 지정해준다.
	}
}

