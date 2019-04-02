<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
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
String id = request.getParameter("id");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from adminaddprod where ProductID='"+id+"'");

while (rs.next()) {
	String pname = rs.getString("ProductName");
	String pid = rs.getString("ProductID");
	String pr = rs.getString("Price"); 
	
	%>
	<form action="comment.jsp">
	<p>Name: <%=pname %></p>
	<p>ID: <%=pid %></p>
	<input type="hidden" name="id" value="<%=pid%>">
	<p>Price: <%=pr %></p>
	<p><textarea rows="5" cols="25" name="cmt"></textarea> </p>
	<input type="submit" value="Submit">
	</form>
		<%  
}
FileReader fr=new FileReader("hdfs://localhost:9000/output/part-r-00000");
BufferedReader br=new BufferedReader(fr);
String l = "";
while((l=br.readLine())!=null)
{
	String l1[] =l.split("\t");
	String id2 = l1[0];
	String h[] = l1[1].split(","); 
	int h1 =Integer.parseInt(h[0]);
	int low =Integer.parseInt(h[1]);
	
	if(h1>low){
	ResultSet rs1 =	st.executeQuery("select * from adminaddprod where id ='"+id2+"'");
		
		
		if(rs1.next()){
			String name = rs1.getString("ProductName");
			%>
			<p><%=id2 %></p><br/>
			<p><%=name %></p><br/>
			<%
		}
	}
}

	

%>
</body>
</html>