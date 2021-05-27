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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String root = request.getParameter("root");
	String address = request.getParameter("address");
	String memo = request.getParameter("memo");
%>
	아이디: <%=id %> <br>
	비밀번호: <%=pw %> <br>
	성벌: <%=gender %> <br>
	가입경로: <%=root %> <br>
	주소: <%=address %> <br>
	메모: <%=memo %> <br>

</body>
</html>