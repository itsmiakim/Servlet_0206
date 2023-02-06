package com.miakim.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class test05Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
	
			PrintWriter out = response.getWriter();
			
			// 구구단 단수를 전달 받고,
			// 전달 받은 단수를 출력한다.
			String number =  request.getParameter("number");
			
			
	
	
	
	}	
}
