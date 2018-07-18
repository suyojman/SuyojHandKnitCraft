<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/28/2017
  Time: 10:38 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
<style>
#add{
    width:400px;
    height: 500px;
    left: 0;
    right:0;
    top:0;
    bottom:0;
    margin: auto;
    border:black solid 5px;
    margin:auto;
    position: absolute;
    margin-top: 40px;
    max-width: 100%;
    max-height: 100%;
    overflow: auto;
}
#first{
    margin-top: 20px;
    margin-right: 10px;
    margin-left: 10px;

}
.back{
    color:white;

}
</style>
</head>

<body>
<div id="add">
    <div id="first">
<g:form method="post" action="update" controller="product">
    <div class="form-group">
        <input type="hidden" name="id" value="${i.id}">
        <label for="usr">Product Code :</label>
        <input type="text" name="productCode" placeholder="Product id" class="form-control" value="${i.productCode}" id="usr">
    </div>
    <div class="form-group">
        <label for="usr1">Product Name :</label>
        <input type="text" name="productName" placeholder="Product Name" class="form-control" value="${i.productName}" id="usr1" >
    </div>
    <div class="form-group">
        <label for="usr2">Product Price:</label>
        <input type="number" name="productPrice" placeholder="Product Price" class="form-control" id="usr2" value="${i.productPrice}">
    </div>
    <div class="form-group">
        <label for="usr3">Product Quantity:</label>
        <input type="text" name="productQuantity" placeholder="Product Quantity" class="form-control" id="usr3" value="${i.productQuantity}">
    </div>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" class="btn btn-success" value="UPDATE">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <g:link action="dash" controller="user"> <input type="button" class="btn btn-info" value="Back" /></g:link>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" class="btn btn-danger" value="RESET">
</g:form>
    </div>
</div>
</body>
</html>