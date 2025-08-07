package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/IndexPage")
public class IndexPage extends HttpServlet {  //request, response가 있음. request에 ip정보, form data 담겨잇음 / response에는

	//doGet, doPost 모두 doAction 실행시키려면
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction 실행");
		//여기에 프로그램 구현
	}
	
	//get방식으로 들어올 때 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet으로 호출되어 실행되었습니다.");
		doAction(request, response);
	}

	//post방식으로 들어올 때 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost로 호출되어 실행되었습니다.");
		doAction(request, response);
	}

}
