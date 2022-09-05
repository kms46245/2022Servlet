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
	public void doGet(HttpServletRequest req, HttpServletResponse res) 	// get type - Ŭ���̾�Ʈ�� �־ ��ȸ��� �ǹ̿� ������. <-> Post type
		throws ServletException, IOException {	// �� doGet�� call ��ü�� tomcat�̴�.
			int num1 = 1;
			int num2 = 2;
			
			res.setContentType("text/html; charset=utf-8");	// response�� �������� Ÿ���� ����, response�� header�� ����
			PrintWriter out = res.getWriter();
			out.println("<h2>GET</h2>");
			out.printf("<p>%d + %d = %d<p>", num1, num2, num1 + num2);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");	// html������ textŸ���̰� utf-8�� unicode�� ���
		PrintWriter out = res.getWriter();				// �Ѵ� �� client���� ����
		out.println("<h2>POST</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);		
	}
}
