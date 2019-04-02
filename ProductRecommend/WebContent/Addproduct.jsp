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
.add{
margin-left: 200px;
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Product</title>
</head>
<body>

<div>
  <form action="Addproduct1.jsp">
    <label for="pname">Product Name</label>
    <input type="text" id="pname" name="productname" placeholder="Your product name..">

<label for="pid">Product Id</label>
    <input type="text" id="pid" name="productid" placeholder="Your product id..">


<div class="row">
      <div class="col-25">
        <label for="category">Category</label>
      </div>
      <div class="col-75">
        <select id="category" name="category">
          <option value="clothing">Clothing</option>
          <option value="accessories">Accessories</option>
          <option value="electronics">Electronics</option>
          <option value="furniture">Furnitures</option>
        </select>
      </div>
<label for="price">Price</label>
    <input type="text" id="price" name="price" placeholder="Product's price.">


    <input type="submit" value="ADD">
    
</form>
</div>

</body>
</html>