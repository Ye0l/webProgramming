<%@page import="ch10.web1.신동원"%>
<%@page import="ch10.web1.Test"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Test 객체에 데이터 입력하기
	Test t = new Test("길동", "홍");
	신동원 신동원 = new 신동원("175", "70kg");
	신동원 신동원2 = new 신동원();
	신동원2.set키("176");
	신동원2.set몸무게("70kg");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%= t.getLastName()+t.getFirstName() %>
	<%= 신동원.get키() %> <%= 신동원.get몸무게() %>
	<%= 신동원2.get키() %> <%= 신동원2.get몸무게() %>
</body>
</html>