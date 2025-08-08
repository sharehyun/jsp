<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>html->servlet</title>
	</head>
	<body>
		<form action="/w0807/FormPage2" method="post">
			<label>이름</label>
			<input type="text" name="name"><br>
			<label>국어점수</label>
			<input type="text" name="kor"><br>
			<label>영어점수</label>
			<input type="text" name="eng"><br>
			<label>수학점수</label>
			<input type="text" name="math"><br>
			<input type="submit" value="제출">
		</form>
	
	</body>
</html>