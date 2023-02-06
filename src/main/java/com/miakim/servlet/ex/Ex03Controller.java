package com.miakim.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과, 생년월일을 전달 받고,
		// 이름과 나이를 html로 보여준다.
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html"); -> 화면을 구성하는 데이
		response.setContentType("application/json");
		// Jason 단순 데이터만 담겨지는 
		
		PrintWriter out = response.getWriter();	
		
		// 웹페이지를 만드는 쪽에서 설정
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20001212
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
		
//		out.println("<html><head><title>get method</title></head><body>");
//		
//		out.println("<h2>이름 : " + name + "</h2>");
//		out.println("<h3>나이 : " + age + "</h3>");
//		
//		out.println("</body></html>");
		
		// 이름과 나이를 데이터로response에 담는다.
		// jason 
		// {"name" : "김인규", "age":22}  name 키에 김인규가 저장, age 키에 22 저장 = > 문자열로 보이는 키 저장
		// ["김인규", "유재석", 등등]
		// [
		//   {"name" : "김인규", "age" : 24}
		// 	 {"name" : "유재석", "age" : 28}
		// ]  => 굳이 문자열로 만드는 이유? 텍스트 편집기 0202에 설
		out.println("{\"name\" : \"" + name + "\", \"age\":" + age + "}");
	}
}
