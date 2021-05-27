<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "copyright of Yeol"
    import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>page 지시자 연습</title>
</head>
<body>
	<%
		out.println("오늘의 날짜는 : " + LocalDate.now());
	%>
	<br>
	<h2><%= LocalTime.now() %></h2>
	<%= getServletInfo() %>
</body>
</html>