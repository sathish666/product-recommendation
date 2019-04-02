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
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body>
<div>
  <form action="register2.jsp">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your firstname..">

<label for="lname">Last Name</label>
    <input type="text" id="lname" name="lasttname" placeholder="Your lastname..">

<label for="no">Mobile number</label>
    <input type="text" id="no" name="mobileno" placeholder="Your mobile no..">

<label for="email">EMAIL ID</label>
    <input type="text" id="email" name="emailid" placeholder="Your email id..">

<label for="urname">User name</label>
    <input type="text" id="urname" name="username" placeholder="Your user name..">

    <label for="pwd">Password</label>
    <input type="password" id="pwd" name="password" placeholder="Your password..">
    <input type="submit" value="Register">
    
</form>
</div>

</body>
</html>