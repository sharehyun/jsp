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
		<%--  --%>
		<%--<%! %>:지시자 <%= %>:선언식 <% %>:스크립트릿--%>
		<h2>메인페이지</h2>
		<c:forEach var="i" begin="1" end="10" step="1">
			<c:if test="${i<5}">
				<h2>${i}</h2>
			</c:if>
			<c:if test="${i>=5}">
				<h4>${i}</h4>
			</c:if>
		</c:forEach>



		<%
			for(int i=1;i<=10;i++){
				out.println(i+"<br>");
			}
		
		
		%>
	
	</body>
</html>