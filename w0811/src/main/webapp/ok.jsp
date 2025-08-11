<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok</title>
</head>
<body>
	<h2>결과</h2>
	<table>
		<tr>
			<td colspan="2">성인입니다.</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name")%></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=request.getParameter("age")%></td>
		</tr>
	</table>
</body>
</html>