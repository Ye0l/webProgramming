<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>웹브라우저와 웹 서버 정보 표시</title>
</head>
<body>
	<h2>웹브라우저와 웹 서버 정보 표시</h2>
	<hr>
	<ul>
		<li>서버명: <%= request.getServerName() %></li>
		<li>전송방식: <%= request.getMethod() %></li>
		<li>컨텍스트 경로: <%= request.getContextPath() %></li>
		<li>URI: <%= request.getRequestURI() %></li>
		<li>클라이언트IP: <%= request.getRemoteAddr() %></li>
		<li>프로토콜: <%= request.getProtocol() %></li>
		<li>서버포트: <%= request.getServerPort() %></li>
	</ul>
	
	<h2>header 정보 표시</h2>
	<hr>
	<ul>
		<%
			Enumeration<String> en = request.getHeaderNames();
		%>	
	</ul>
</body>
</html>