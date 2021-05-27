<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>성적입력</title>
</head>
<body>
	<h2>성적입력</h2>
	<hr>
	<form action = "scorePro.jsp" method="post">
		국어 : <input type="text" name="korean"><br>
		영어 : <input type="text" name="english"><br>
		수학 : <input type="text" name="math"><br>
		<hr>
		메모 : <input type="text" name="memo"><br><br>
		<input type="submit" value = "서버로 보내기">
	</form>
</body>
</html>