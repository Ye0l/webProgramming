<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="test1result.jsp" method="post">
		<table>
			<tr>
				<td>관심언어</td>
				<td>
					<input type="checkbox" name="language" value="PHP"> PHP <br>
					<input type="checkbox" name="language" value="JSP"> JSP <br>
					<input type="checkbox" name="language" value="ASP.NET"> ASP.NET <br>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<select name="hobby" size="4" multiple="multiple">
						<option value="영화">영화</option>
						<option value="운동">운동</option>
						<option value="독서">독서</option>
						<option value="기타">기타</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>