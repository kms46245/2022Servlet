package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/getPost/add")
public class C3_GetPost extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) 	// get type - 클라이언트에 있어서 조회라는 의미에 가깝다. <-> Post type
		throws ServletException, IOException {	// 이 doGet의 call 주체는 tomcat이다.
			int num1 = 1;
			int num2 = 2;
			
			res.setContentType("text/html; charset=utf-8");	// response할 콘텐츠의 타입을 지정, response의 header에 저장
			PrintWriter out = res.getWriter();
			out.println("<h2>GET</h2>");
			out.printf("<p>%d + %d = %d<p>", num1, num2, num1 + num2);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");	// html파일의 text타입이고 utf-8을 unicode로 사용
		PrintWriter out = res.getWriter();				// 한다 를 client에게 전송
		out.println("<h2>POST</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);		
	}
}
