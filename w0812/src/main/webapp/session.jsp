<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<ul>
			<% if(session.getAttribute("session_id").equals("aaa")){ 
				out.println("");
			%>
				<!-- html 태그 입력가능 -->
				<li>로그인 되었습니다</li>
				<li>아이디 : <%=session.getAttribute("session_id") %></li>
				<li>닉네임 : <%=session.getAttribute("session_nickName") %></li>
			
			<%}else{%>
			
			<%}%>
		</ul>
		<a href="./p01.jsp"><p>섹션페이지이동</p></a>
		<a href="./session_out.jsp"><p>섹션종료</p></a>
	</body>
</html>