<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섹션삭제</title>
	</head>
	<body>
		<ul>
		<li>섹션모두삭제</li>
		<%
			session.invalidate();
			//session.removeAttribute("session_nickName");			
		%>
		</ul>
		<a href="./p01.jsp"><p>섹션페이지이동</p></a>
		
	
	</body>
</html>