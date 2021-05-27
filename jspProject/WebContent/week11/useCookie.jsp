<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쿠키 찾기</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies) {
		out.println("쿠키명: " + c.getName() + "<br>");
		out.println("쿠키값: " + c.getValue() + "<br>");
	}
%>
</body>
</html>