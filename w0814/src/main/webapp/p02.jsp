<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<c:forEach var="i" begin="1" end="10" step="1">
			<c:choose>
				<c:when test="${i<3}">
					<h5>${i}</h5>
				</c:when>
				<c:when test="${i>=3 and i<=6}">
					<h3>${i}</h3>
				</c:when>
				<c:otherwise>
					<h1>${i}</h1>
				</c:otherwise>
			</c:choose>
	
	
		</c:forEach>
	</body>
</html>