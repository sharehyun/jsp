<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;text-align:center;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
		<h2>메인페이지</h2>
		<table>
			<tr>
				<th>일련번호 : </th>
				<th>단</th>
				<th>x</th>
				<th>숫자</th>
				<th>=</th>
				<th>값</th>
			</tr>
			<c:forEach var="i" varStatus="vs" begin="2" end="9" step="1">
			<c:if test="${i%2==0}">
				<tr>
				<td colspan="6">${i} 단</td>
				</tr>
				<c:forEach var="j" begin="1" end="9" step="1">
				<tr>
					<td>일련번호 : ${vs.index}</td>
					<td>${i}</td>
					<td>x</td>
					<td>${j}</td>
					<td>=</td>
					<td>${i*j}</td>
				</tr>
				</c:forEach>
			</c:if>
			</c:forEach>
		</table>

	</body>
</html>