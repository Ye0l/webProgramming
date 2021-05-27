<%@page import="ch10.web1.신동원"%>
<%@page import="ch10.web1.LoginDTO"%>
<%@page import="ch10.web1.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%	request.setCharacterEncoding("utf-8");
LoginDTO loginDTO = new LoginDTO(
		request.getParameter("id"),
		request.getParameter("name"),
		request.getParameter("pwd")
		);
LoginDAO dao = new LoginDAO();
dao.deleteLogin(loginDTO);

response.sendRedirect("list.jsp");

신동원 tls = new 신동원();
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
</body>
</html>