<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String[] hobby = request.getParameterValues("hobby");
		
		out.print("당신의 취미는 : ");
		for(String i : hobby) {
			out.println(i + " ");
		}
	%>
</body>
</html>