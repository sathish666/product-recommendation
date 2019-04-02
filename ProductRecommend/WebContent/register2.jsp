<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String fname=request.getParameter("firstname");
String lname=request.getParameter("lasttname");
String mobno=request.getParameter("mobileno");
String mail=request.getParameter("emailid");
String uname=request.getParameter("username");
String passwd=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/product","root","admin");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into user values('"+fname+"','"+lname+"','"+mobno+"','"+mail+"','"+uname+"','"+passwd+"')");
if(i>0){
	%>
	<script>
	alert("Success");
	</script>
	<% 
	response.sendRedirect("user.jsp");
}
else
{
	%>
	<script>
	alert("Failed");
	</script>
	<% 
	response.sendRedirect("user.jsp");
	}
%>
</body>
</html>