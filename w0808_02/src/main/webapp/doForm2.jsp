<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{border:1px solid black;border-collapse:collapse;}
			th,td{width:200px;height:40px;}
			table{width:600px;margin:0 auto;}
		</style>
	</head>
	<body>
		<table>
		
			<tr>
				<th>이름</th>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><%= request.getParameter("id") %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%= request.getParameter("pw1") %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<% 
					String mail_id = request.getParameter("mail_id");
					String mail_tail = request.getParameter("mail_tail");
					String email = String.format(mail_id+"@"+mail_tail);
				%>
				<td><%= email %></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><%= request.getParameter("gender") %></td>
			</tr>
			<tr>
				<th>관심사</th>
				<% String[] str = request.getParameterValues("hobby"); %>
				<td><%= Arrays.toString(str) %></td>
			</tr>
		</table>

	</body>
</html>