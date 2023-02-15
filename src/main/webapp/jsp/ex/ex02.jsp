<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get method</title>
</head>
<body>
	<%
		// 이름과 생년월일을 전달 받고 
		// 이름과 나이를 보여주는 페이지
		// 데이터 준비하기 전에, 화면 구성을 먼저 해놓고 확인 후 샘플 데이터 넣어서 확인하기
		String name = request.getParameter("name");
		// jsp에는 미리 request객체를 준비해둠(변수이름은 request)
		String birthday = request.getParameter("birthday");
		
		int year = 	Integer.parseInt(birthday.substring(0, 4));
		int age = 2023 - year + 1;
	
	%>

	<table border="1">
		<tr>
			<th>이름</th>
			<td><%= name %></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><%= age %></td>
		</tr>	
	</table>


</body>
</html>