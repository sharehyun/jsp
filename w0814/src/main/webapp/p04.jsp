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
	<c:forEach var="item" items="서울,부산,대구,대전,인천" varStatus="vs">
		<p>${vs.count} : ${item}</p>
	
	</c:forEach>
	
	</body>
</html>