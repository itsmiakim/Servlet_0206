package com.miakim.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class test03Controller extends HttpServlet {

	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		Date date = new Date();	
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTimeString = format.format(date);
		
		out.println("<html><head><title>고양이가 야옹해</title></head> <body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("<br>기사 입력시간 : "  + dateTimeString);
		out.println("<hr>끝</body></html>");
	}	
}
