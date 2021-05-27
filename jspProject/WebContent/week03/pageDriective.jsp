<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>include Directive 연습</title>
</head>
<body>
<!-- 주석1 -->
<%-- 주석2 (열린 페이지에서 주석이 보이지 않음) --%>
<%
	// 주석3
	/* 주석4 */
%>
	<%@ include file="top.jsp" %>
	<hr>
	여기는 메인 페이지인 includeDirective.jsp 입니다.
	<hr>
	<%@ include file="bottom.jsp" %>
</body>
</html>