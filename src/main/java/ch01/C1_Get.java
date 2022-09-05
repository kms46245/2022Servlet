package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")	// �ش� servlet�� ������ url�� ������ش�. (�ߺ��������� ����������)
public class C1_Get extends HttpServlet {
	//servlet�� �������� - java���� web app�� �����;
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) 	// get type - Ŭ���̾�Ʈ�� �־ ��ȸ��� �ǹ̿� ������. <-> Post type
		throws ServletException, IOException {	// �� doGet�� call ��ü�� tomcat�̴�.
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");	// response�� �������� Ÿ���� ����, response�� header�� ����
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d<p>", num1, num2, num1 + num2);
		
		// tomcat�� url�� �ڵ����� �Ҵ������ʱ⶧���� �̴�δ� 404������ �߻��Ѵ�.
		// �׷��Ƿ� annotation�� �߰��ؼ� url�� ���� �������ش�.
	}
}

