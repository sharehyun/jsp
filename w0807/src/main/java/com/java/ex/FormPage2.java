package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FormPage2")
public class FormPage2 extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("doAction 실헹");
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int total = kor+eng+math;
		double avg = total/3.0;
		
		System.out.println("name : "+name);
		System.out.println("kor : "+kor);
		System.out.println("eng : "+eng);
		System.out.println("math : "+math);
		System.out.println("total : "+total);
		System.out.printf("avg : %.2f\n",avg);
		
		
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>학생성적</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>학생성적</h2>");
		writer.println("<p>이름 : "+name+"</p>");
		writer.println("<p>국어 : "+kor+"</p>");
		writer.println("<p>영어 : "+eng+"</p>");
		writer.println("<p>수학 : "+math+"</p>");
		writer.println("<p>합계 : "+total+"</p>");
		writer.println("<p>평균 : "+avg+"</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 실행");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 실행");
		doAction(request,response);
	}

}
