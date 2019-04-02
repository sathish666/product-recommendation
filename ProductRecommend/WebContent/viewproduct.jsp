<%@page import="java.sql.ResultSet"%>
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
		String cat = request.getParameter("type");


		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
		Statement st = con.createStatement();

		if (cat.equals("clothing")) {
			ResultSet rs = st.executeQuery("select * from adminaddprod where Category='clothing'");
			while (rs.next()) {
				String pname = rs.getString("ProductName");
				String pid = rs.getString("ProductID");
				String pr = rs.getString("Price");
				
				%>
				<p>Name: <%=pname %></p>
				<p><a href="View.jsp?id=<%=pid%>">View</a> </p>
				
					<% 
			}
		} else if (cat.equals("accessories")) {
			ResultSet rs = st.executeQuery("select * from adminaddprod where Category='accessories'");
			while (rs.next()) {
				String pname = rs.getString("ProductName");
				String pid = rs.getString("ProductID");
				String pr = rs.getString("Price");
				
				%>
				<p>Name: <%=pname %></p>
				<p><a href="View.jsp?id=<%=pid%>">View</a> </p>
				
					<% 
			}
		} else if (cat.equals("electronics")) {
			ResultSet rs = st.executeQuery("select * from adminaddprod where Category='electronics'");
			while (rs.next()) {
				String pname = rs.getString("ProductName");
				String pid = rs.getString("ProductID");
				String pr = rs.getString("Price");
				
				%>
				<p>Name: <%=pname %></p>
				<p><a href="View.jsp?id=<%=pid%>">View</a> </p>
				
					<% 
			}
		}

		else if (cat.equals("furnitures")) {
			
			ResultSet rs = st.executeQuery("select * from adminaddprod where Category='furniture'");
			while (rs.next()) {
				String pname = rs.getString("ProductName");
				String pid = rs.getString("ProductID");
				String pr = rs.getString("Price");
				%>
				<p>Name: <%=pname %></p>
				<p><a href="View.jsp?id=<%=pid%>">View</a> </p>
				
					<%  
			}
		}else{
			%>
			<p>No products</p>
			<% 
		}
	%>
	
</body>
</html>