%{--
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/28/2017
  Time: 3:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Profile</title>
    <g:javascript library="jquery"/>
    --}%
%{--<meta name="layout" content="main"/>--}%%{--

    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <style>
    #main{
        margin-top: 20px;
        margin-left: 10px;
        margin-right: 10px;
        margin-bottom: 20px;
    }
    </style>
</head>

<body>
<div id="main">
    <table class="table">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <g:each in="${profile}" var="i">
            <tr>

                <td> ${i.name} </a></td>
                <td>${i.email}</td>
                <td>${i.password}</td>

                <td><a href="edit/${i.id}">Edit</a> </td>
                <td><a href="delete/${i.id}">Delete</a> </td>
            </tr>
        </g:each>
    </table>
    <br>
    <br>
    <g:link action="dash" controller="user"> <input type="button" class="btn btn-info" value="Back" /></g:link>
<br>
    <g:form controller="user" action="searchUser">
        <input type="text" name="q" placeholder="Search user">
    </g:form>
    <g:link action="dashboard" controller="user"><input type="button" class="btn btn-info" value="Back" /></g:link>

    <g:remoteField name="t" action="welcome" controller="user" update="h">

    </g:remoteField>
    <div id="h">

    </div>
</body>
</html>--}%
<!DOCTYPE html>
<html>

<head>
    <title>User table</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/user.css">

    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
</head>

<body>
<div class="container">
    <div class="row">

        <h1 align="center">User Details</h1>

        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">User List</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>
                            <th><em class="fa fa-cog"></em></th>
                            <th class="hidden-xs">ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Password</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${profile}" var="i">
                        <tr>
                            <td align="center">
                                <a class="btn btn-default" href="edit/${i.id}"><em class="fa fa-pencil"></em></a>
                                <a class="btn btn-danger" href="delete/${i.id}"><em class="fa fa-trash"></em></a>
                            </td>
                            <td class="hidden-xs">${i.id}</td>
                            <td>${i.name}</td>
                            <td>${i.email}</td>
                            <td>${i.password}</td>
                        </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col col-xs-4">Page 1 of 5
                        </div>
                        <div class="col col-xs-8">
                            <ul class="pagination hidden-xs pull-right">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul>
                            <ul class="pagination visible-xs pull-right">
                                <li><a href="#">«</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div align="center"><g:link controller="user" action="dash"><button type="button" class="btn btn-sm btn-primary btn-create">Dashboard</button></g:link></div>
</body>

</html>