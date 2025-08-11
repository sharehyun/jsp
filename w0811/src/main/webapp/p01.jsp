<%@page import="java.util.Date"%>  <!-- 지시자  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	<%-- jsp주석 : 소스보기에 보이지 않음 --%>
	<!-- html주석 : 소스보기 보여짐 -->
	<!-- 스크립트릿 : 자바소스구현 -->
	
	<%! 
		int a = 10;
		String method(){
			return "안녕하세요.<br>";
		}
	%>
	
	<% 
		Date today = new Date();
	
		for(int i=0;i<20;i++){
			out.println(i+"<br>");
		}
		
		out.println(method());
	%>
	
	<table>
		<tr>
			<td>변수</td>
			<td>값</td>
		</tr>
		<% for (int i=0;i<20;i++) { %>
		<tr>
			<td><%= i %></td>
			<td><%= i*10 %></td>
		</tr>
		<% } %>
	</table>
	
	
	</body>
</html>