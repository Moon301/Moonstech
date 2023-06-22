<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<%
	Connection conn= null;
	PreparedStatement pstmt = null;
	ResultSet rs =null;
	try {
		String url = "jdbc:mysql://localhost:3306/data?useSSL=false";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("Sucsses!");
		
	}catch(ClassNotFoundException e){
		System.out.println("JDBC Driver load error");
	}catch (SQLException ex) {
		out.println("DB Connect Fail<br>");
		out.println("SQLException: " + ex.getMessage());
	}
%>