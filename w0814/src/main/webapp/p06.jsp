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
		<title>디비연결</title>
	</head>
	<body>
	<%!
		Connection connection;
		PreparedStatement pstmt;
		ResultSet rs;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid  = "ora_user";
		String upw = "1111";
		String query = "select * from member";
	%>
	
	<% 
		try{
			Class.forName(driver);
			connection = DriverManager.getConnection(url,uid,upw);
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				out.println(id+","+pw+","+name+","+phone+"<br>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(connection!=null) connection.close();
		}
	%>
	
	</body>
</html>