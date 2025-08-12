<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>로그인 확인</h2>
		<%
			if(request.getParameter("id").equals("aaa")&&request.getParameter("pw").equals("1111")){
				session.setAttribute("session_id", "aaa");
				session.setAttribute("session_nickName", request.getParameter("nickName"));
				response.sendRedirect("./main.jsp");
			}else{
				response.sendRedirect("./login.jsp?loginCheck=0");
			}
		%>
		<table>
		   <tr>
		     <th colspan="2">로그인하셔야 사용가능합니다</th>
		   </tr>
		   <tr>
		     <th colspan="2"><a href="./login.jsp">로그인페이지 이동</a></th>
		   </tr>
		 
		<a href="./main.jsp"><p>메인 이동</p></a>
		
		
	</body>
</html>