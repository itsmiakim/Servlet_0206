package com.miakim.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class test08Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 검색어를 입력받고 submit 할 수 있는 html 문서 작성
		
		String words1 = request.getParameter("words");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.",
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		for(int i = 0; i < list.size(); i++) {
			String result = list.get(i); 
			if(result.contains(words1)) {
				result = result.replace(words1, "<b>" + words1 +"</b>");
				out.println(result + "<hr>");
			}
		}
		out.println("<html><head><title>검색결과</title></head><body></html>");
		
//		for(String sentence:list) {
//			// 문자열 안에 특정한 keyword 포함되어 있는지 확인
//			if(sentence.contains(words)) {
//				//html 에 포함시킨다
//				// 강남역 최고 <b>맛집</b> 소개 합니다. 로 바꾸어야함!
//				sentence = sentence.replace(words, "<b>" + words + "</b>");
//				out.println(sentence + "<hr>");
//			}
//		}
		
		
		
		
		
	}
}
