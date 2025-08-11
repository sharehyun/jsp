<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>회원가입</h2>
		<form action="./doForm.jsp">
			<label>아이디</label>
			<input type="text" name="id"><br>
			<label>패스워드</label>
			<input type="text" name="pw"><br>
			<label>이름</label>
			<input type="text" name="name"><br>
			
			<label>성별</label><br>
			<label for="male">남</label>
			<input type="radio" name="gender" id="male" value="male">
			<label for="female">여</label>
			<input type="radio" name="gender" id="female" value="female"><br>
			
			<label>취미</label><br>
			<label for="game">게임</label>
			<input type="checkbox" name="hobby" id="game" value="game">
			<label for="golf">골프</label>
			<input type="checkbox" name="hobby" id="golf" value="golf">
			<label for="swim">수영</label>
			<input type="checkbox" name="hobby" id="swim" value="swim">
			<label for="book">독서</label>
			<input type="checkbox" name="hobby" id="book" value="book">
			<br>
			<br>
			<input type='submit' value='가입완료'>
			
		</form>
	</body>
</html>