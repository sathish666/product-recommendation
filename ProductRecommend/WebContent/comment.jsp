<%@page import="java.io.Writer"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileReader"%>
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
FileWriter fr = null;
BufferedWriter bw=null;
try{
String id = request.getParameter("id");
String cmt = request.getParameter("cmt");

 fr=new FileWriter("/home/hadoop/c/comment.txt",true);
 bw=new BufferedWriter(fr);
String s=id+"\t"+cmt;
bw.write(s);
bw.write("\n");

response.sendRedirect("userhome.jsp");

}catch(Exception e){
	out.println(e);
}finally{
	
	bw.close();
fr.close();

}
%>

</body>
</html>