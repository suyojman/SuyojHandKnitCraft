<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/27/2017
  Time: 4:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Today's Sale</title>
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/user.css">
</head>

<body>
<div id="main" style="padding: 30px 30px 30px 30px">
<table class="table">
    <thead class="thead-default">
    <tr>
        <th>S.N</th>
        <th>Customer Name</th>
        <th>Product Name</th>
        <th>Product Price (Rs)</th>
        <th>Product Quantity</th>
        <th>Transaction Date</th>

        <th>Total</th>

    </tr>
    </thead>
    <tbody>
    <g:set var="total" value="${0}"/>
    <g:each in="${sale}" var="i">
        <tr>

            <td> ${i.id} </a></td>
            <td>${i.customerName}</td>
            <td>${i.productName}</td>
            <td>${i.productPrice}</td>
            <td>${i.productQuantity}</td>
            <td>${i.transaction_date}</td>
            <td>${i.totalPrice}</td>

<g:set var="total" value="${total+i.totalPrice}"/>


        </tr>
    </g:each>


    <tr>

        <td colspan="6" align="right">Main Total =${total} </td>
        </tr>
    </tbody>
    </table>
<g:paginate total="${count}" max="10"/>

    <g:paginate next="Forward" prev="Back"  maxsteps="10" controller="bill" action="todaySale" total="${count}" params="${params}"/>
</div>
<div align="center"> <g:link action="dash" controller="user"><input type="button" class="btn btn-info" value="Dashboard" /></g:link> </div>
    </body>
    </html>

