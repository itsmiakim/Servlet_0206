<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		// 보고싶은 데이터의 형태 전달 받고,
		// 하나의 파라미터를 전달 받아서 키워드를 설정..?
		// what=time이라고 하면 (시간)  what=date이라고 하면 (날) 
		
		String what = request.getParameter("what");
		
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");
		SimpleDateFormat formatter1 = new SimpleDateFormat("현재시간 H시 m분 s초");
	
		String dateString = formatter.format(now);
		String timeString = formatter1.format(now);
		
		String resultString =null;
		if(what.equals("time")){
			// 시간을 보여준다
			resultString = timeString;
		} else {
			// 날짜를 보여준다
			resultString = dateString;
		}		
	%>
	<div class="container"><%= resultString %></div>>
</body>
</html>