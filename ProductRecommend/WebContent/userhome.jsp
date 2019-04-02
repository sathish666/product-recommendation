<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
.cl{
	/* background-color: blue; */
	height: auto;
	/* width: 100px; */
	/*margin-top: 50px;*/
	margin-left: 180px;
}
.acc{
/*background-color: blue;*/
	height: auto;
	/*width: 100px;*/
	/*margin-top: 150px;*/
	margin-left: 180px;
	
	

}
.elect{
/*background-color: blue;*/
	height: auto;
	/*width: 100px;*/
	/*margin-top: 150px;*/
	margin-left: 180px;
	}
	.fur{
/*background-color: blue;*/
	height: auto;
	/*width: 100px;*/
	/*margin-top: 150px;*/
	margin-left: 180px;


</style>
</head>
<body>

<div class="cl">
	<h2>Clothing</h2>
	<a href="viewproduct.jsp?type=clothing"><img alt="clothing" src="clothing.jpg" height="150px"></a>
	
	</div>
	<div class="acc">
	<h2>Accessories</h2>
	<a href="viewproduct.jsp?type=accessories"><img alt="Accessories" src="acce.jpg" height="100px"></a>
	</div>
	<div class="elect">
	<h2>Electronics</h2>
	<a href="viewproduct.jsp?type=electronics"><img alt="Electronics" src="elect.jpg" height="100px"></a>
	</div>
	<div class="fur">
	<h2>Furnitures</h2>
	<a href="viewproduct.jsp?type=furnitures"><img alt="Furnitures" src="furniture.jpg" height="100px"></a>
	</div>

</body>
</html>