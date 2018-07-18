<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/25/2017
  Time: 1:33 PM
--%>

%{--
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <style>
    #main{
        margin-top: 20px;
        margin-left: 10px;
        margin-right: 10px;
        margin-bottom: 20px;
    }
    </style>
    <export:resource />
</head>

<body>
<div id="main">
<table class="table">
    <tr>
        <th>Product Code</th>
        <th>Product Name</th>
        <th>Product Price (Rs)</th>
        <th>Product Quantity</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${p}" var="i">
        <tr>

            <td> ${i.productCode} </a></td>
            <td>${i.productName}</td>
            <td>${i.productPrice}</td>
            <td>${i.productQuantity}</td>
            <td><a href="edit/${i.id}">Edit</a> </td>
            <td><a href="delete/${i.id}">Delete</a> </td>
        </tr>
    </g:each>
</table>
    <export:formats formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />

<g:link action="dash" controller="user"><input type="button" class="btn btn-info" value="Back" /></g:link>
</div>
</body>
</html>
--}%

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Product List</title>


    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="../bootstrap/css/productList.css">

    <export:resource />

</head>

<body>
<table>
    <thead>
    <tr>
        <th>Product Code</th>
        <th>Product Name</th>
        <th>Product Price (Rs)</th>
        <th>Product Quantity</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <thead>
    <tbody>
<g:each in="${p}" var="i">
    <tr>

        <td> ${i.productCode} </a></td>
        <td>${i.productName}</td>
        <td>${i.productPrice}</td>
        <td>${i.productQuantity}</td>
        <td><a href="edit/${i.id}">Edit</a> </td>
        <td><a href="delete/${i.id}">Delete</a> </td>
    </tr>
</g:each>

    </tbody>
    </table>
<div align="center">
<export:formats  formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />
</div>
<blockquote><g:link controller="user" action="dash"><button type="button" class="btn btn-info">Dashboard</button></g:link><h2> Suyoj Hand Knit Craft</h2> </blockquote>


</body>
</html>
