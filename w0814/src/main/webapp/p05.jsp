<%@page import="java.util.Date"%>
<%@page import="com.java.www.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  h2{text-align:center;}
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;text-align:center;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
	<%
		Date d = new Date();
		ArrayList<Member> list = new ArrayList();
		list.add(new Member("aaa","1111","홍길동",d));
		list.add(new Member("bbb","1111","유관순",d));
		list.add(new Member("ccc","1111","이순신",d));
		
		request.setAttribute("mlist",list);
	%>
	
		<h2>메인페이지</h2>
		<h4><%=d%></h4>
		<table>
			<tr>
				<th>순번</th>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>날짜</th>
			</tr>
			<c:forEach var="member" items="${mlist}" varStatus="vs">
				<tr>
					<td>${vs.count}</td>
					<td>${member.id}</td>
					<td>${member.pw}</td>
					<td>${member.name}</td>
					<td>
						<fmt:formatDate value="${member.date}" pattern="YYYY-MM-dd hh:mm:ss"/>
					</td>
				</tr>
			</c:forEach>
		</table>
	
	</body>
</html>