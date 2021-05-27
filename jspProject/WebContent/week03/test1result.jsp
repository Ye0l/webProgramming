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
	
	String[] language = request.getParameterValues("language");
	String[] hobby = request.getParameterValues("hobby");
	
	out.print("<h2>관심언어, 취미</h2>");
	out.print("관심언어: ");
	for(String i : language) {
		out.print(i + " ");
	}
	out.print("<br>취미: ");
	for(String i : hobby) {
		out.print(i + " ");
	}
%>
</body>
</html>