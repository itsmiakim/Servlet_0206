<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unit conversion</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		String length = request.getParameter("length");
		String[] unitArray = request.getParameterValues("unit");
		
		int num = Integer.parseInt(length);
		String result = null;
		for(int i = 0; i < unitArray.length; i++){
			String unit = unitArray[i];
			if(unit.equals("인치")){
				double inch = num * 0.3937;
				result += inch + "in<br>";
			} else if(unit.equals("야드")){
				double yard = num * 0.010936;
				result += yard + "yd<br>";
			} else if(unit.equals("피트")){
				double feet = num / 30.48;
				result += feet + "ft<br>";
			} else if (unit.equals("미터")){
				double meter = num * 0.01;
				result += meter + "m<br>";
			}
		}
		
	%>
	
	<div>
		<h1>변환 결과</h1>
		<h4><%= length %>cm</h4>
		<hr>
		<h4><%= result %></h4>
		
	</div>

		
</body>
</html>