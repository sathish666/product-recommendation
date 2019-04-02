<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.reg{
margin-left: 200px;
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Page</title>
</head>
<body>

<div>
  <form action="userlogin.jsp">
    <label for="uname">User Name</label>
    <input type="text" id="uname" name="username" placeholder="Your username..">

    <label for="pwd">Password</label>
    <input type="password" id="pwd" name="password" placeholder="Your password..">
    <input type="submit" value="Login">
    <div class="reg">
    <a href="register.jsp">Register for new account</a>
    </div>
</form>
</div>
 
</body>
</html>