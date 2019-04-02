<%@page import="java.sql.*"%>
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
String name=request.getParameter("productname");
String id=request.getParameter("productid");
String cat=request.getParameter("category");
String price=request.getParameter("price");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/product","root","admin");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into adminaddprod values('"+name+"','"+id+"','"+cat+"','"+price+"')");
if(i>0){
	%>
	<script>
	alert("Success");
	</script>
	<% 
	response.sendRedirect("admin.jsp");
}
else
{
	%>
	<script>
	alert("Failed");
	</script>
	<% 
	response.sendRedirect("admin.jsp");
	
}

%>

</body>
</html>