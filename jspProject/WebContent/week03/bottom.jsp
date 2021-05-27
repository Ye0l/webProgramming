<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "copyright by Yeol"
    import = "java.time.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>반가워요!</h2>
	<hr>
	<%
		out.println("오늘의 날짜 : " + LocalDate.now() + "<br>");
		out.println("지금의 시간 : " + LocalTime.now() + "<br>");
		out.println("작성자 : " + getServletInfo() + "<br>");
	%>
	<br>
	bottom.jsp
</body>
</html>