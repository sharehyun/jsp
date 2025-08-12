<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>로그아웃</h2>
		<%
			session.invalidate();
			response.sendRedirect("./main.jsp");
		%>
		<table>
		   <tr>
		     <th>아이디</th>
		     <td><%=session.getAttribute("session_id")%></td>
		   </tr>
		   <tr>
		     <th>닉네임</th>
		     <td><%=session.getAttribute("session_nickName")%></td>
		   </tr>
		   <tr>
			 <a href="./logout.jsp"><p>로그아웃</p></a>
		   </tr>
		 </table>
	</body>
</html>