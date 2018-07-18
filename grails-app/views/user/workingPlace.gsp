<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/25/2017
  Time: 2:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title >Working Place</title>

</head>

<body>
<br>
<h1 align="center" >WORKING PLACE</h1><br><br>
<g:link action="add" controller="product"> Add Product </g:link> <br><br>
<g:link action="profile" controller="user"> Show User </g:link> <br><br>
<g:link action="productList" controller="product"> Show Product </g:link> <br><br>
<g:link action="todaySale" controller="bill"> Today's Sale </g:link> <br><br>
<g:link action="createBill" controller="bill"> Create Bill </g:link> <br><br>
<g:link action="logout" controller="user"> Logout </g:link>
</body>
</html>