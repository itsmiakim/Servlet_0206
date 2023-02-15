<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test01</title>
</head>
<body>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
			double everage = sum / (double)scores.length;
	%>
	<h3>점수 평균은 <%= everage %> 입니다.</h3>	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		Iterator<String> iter = scoreList.iterator();
	
		int sum1 = 0;
		while(iter.hasNext()) {
			String score1 = iter.next();
			if(score1.equals("O")) {
				sum1 += 10;
		}
	}
	%> 
	<h3>채점 결과는 <%= sum1 %>점 입니다.</h3>

	<%!
		public static int calculate(int num){
			int sum2 = 0;
			for(int i = 0; i < num; i++){
				sum2 += i;
			}
			return sum2;
	}
	%>
	
	
	<h3>1에서 50까지의 합은 <%= calculate(50) %>입니다.</h3>
	
	<%
		String birthDay = "20010820";
		String yearBirth = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearBirth);
		int age =  2023 - year + 1;
	%>
	
	<h3><%= birthDay %>의나이는 <%= age %>살 입니다.</h3>
	
	
</body>
</html>