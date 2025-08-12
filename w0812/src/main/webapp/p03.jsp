<%@page import="com.java.www.Stuscore"%>
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
		Stuscore stu = new Stuscore(1,"홍길동",100);
		out.println("번호 : "+stu.getNo()+"<br>");
	%>
	
	
	</body>
</html>