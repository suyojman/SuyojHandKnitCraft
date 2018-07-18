<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/4/2017
  Time: 6:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit User</title>
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
        <g:form method="post" action="update" controller="user">
            <div class="form-group">
                <input type="hidden" name="id" value="${i.id}">
                <label for="usr">User Name :</label>
                <input type="text" name="name"  class="form-control" value="${i.name}" id="usr">
            </div>
            <div class="form-group">
                <label for="usr1">Email :</label>
                <input type="text" name="email"  class="form-control" value="${i.email}" id="usr1" >
            </div>
            <div class="form-group">
                <label for="usr2">Password :</label>
                <input type="text" name="password"  class="form-control" id="usr2" value="${i.password}">
            </div>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" class="btn btn-success" value="UPDATE">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <g:link action="profile" controller="user"> <input type="button" class="btn btn-info" value="Back" /></g:link>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" class="btn btn-danger" value="RESET">
        </g:form>
    </div>
</div>
</body>
</html>