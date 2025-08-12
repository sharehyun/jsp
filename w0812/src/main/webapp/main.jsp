<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
	      	 h2,td,p{text-align:center;}
	         table,th,td{border:1px solid black; border-collapse: collapse;}
	         th,td{width:200px; height:40px;}
	         table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
		 <!-- 로그인전 -->
		 <% if(session.getAttribute("session_id") == null){ %>
		<table>
		   <tr>
		     <th colspan="2">로그인하셔야 사용가능합니다</th>
		   </tr>
		   <tr>
		     <th colspan="2"><a href="./login.jsp">로그인페이지 이동</a></th>
		   </tr>
		 
		 </table>
		 
		 <% }else{ %>
		 <!-- 로그인후 -->
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
		 <% } %>
	</body>
</html>