<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>result</title>
		<style>
			table,th,td{border:1px solid black;border-collapse:collapse;}
			th,td{width:200px;height:40px;}
			table{width:600px;margin:0 auto;}
		</style>
	</head>
	<body>
	<table>
		<tr>
			<th>변수</th>
			<th>데이터값</th>
		</tr>
		<tr>
			<td colspan="2">[미성년자] 담배, 주류 판매불가합니다.</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= request.getParameter("age") %></td>
		</tr>
	</table>

	</body>
</html>