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
		int korean = Integer.parseInt(request.getParameter("korean"));
		int english = Integer.parseInt(request.getParameter("english"));
		int math = Integer.parseInt(request.getParameter("math"));
		String memo = request.getParameter("memo");
	%>
	국어점수 : <%=korean %><br>
	영어점수 : <%=english %><br>
	수학점수 : <%=math %><br>
	<hr>
	<h3>총점 : <%=korean+english+math %></h4>
	메모 : <%=memo %>
</body>
</html>