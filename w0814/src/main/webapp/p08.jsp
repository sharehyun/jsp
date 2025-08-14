<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  h2,td{text-align:center;}
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
	<%!
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid  = "ora_user";
		String upw = "1111";
		String query = "select * from member";
	%>
	<h2>회원정보</h2>
	<table>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
	
	<% 
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				out.println("<tr>");
				out.println("<td>"+id+"</td>");
				out.println("<td>"+pw+"</td>");
				out.println("<td>"+name+"</td>");
				out.println("<td>"+phone+"</td>");
				out.println("</tr>");
			}
				out.println("</table>");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
	%>
	</body>
</html>