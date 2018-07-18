<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/8/2017
  Time: 5:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
%{--<html>
<head>
    <title>View Bill</title>
</head>

<body>
<g:each in="${r}" var="i">
    Customer Name :${i.customerName} <br>
    Product Code :${i.productCode} <br>
    Product Name :${i.productName} <br>
    Product Quantity :${i.productQuantity} <br>
    Product Price :${i.productPrice} <br>
    Total Price :${i.totalPrice} <br>

</g:each>
</body>
</html>--}%

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Invoice</title>
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="style.css" media="all" />

    <export:resource />
</head>

<body>
<g:each in="${r}" var="i">
<header class="clearfix">
    <div id="logo">
        <img src="../images/wool.png">
    </div>
    <div id="company">
        <h2 class="name">Suyoj Hand Knit Craft</h2>
        <div>Thamel Marg,Kathmandu</div>
        <div>+977-9843229971</div>
        <div><a href="www.suyojhkcraft.com">suyojhkcraft@hotmail.com</a></div>
    </div>
</div>
</header>
<main>
    <div id="details" class="clearfix">
        <div id="client">
            <div class="to">INVOICE TO:</div>
            <h2 class="name">${i.customerName} </h2>
            <div class="address">Kathmandu,Nepal</div>
            %{--<div class="email"><a href="mailto:john@example.com"></a></div>--}%
        </div>
        <div id="invoice">
            <h1>INVOICE 3-2-1</h1>
            <div class="date">Date of Invoice: ${i.transaction_date}</div>
            <div class="date">Due Date: 21/02/2018</div>
        </div>
    </div>
    <table border="0" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <th class="no">#</th>
            <th class="desc">DESCRIPTION</th>
            <th class="unit">UNIT PRICE</th>
            <th class="qty">QUANTITY</th>
            <th class="total">TOTAL</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="no">01</td>
            <td class="desc">
                <h3>${i.productName}</h3></td>
            <td class="unit">${i.productPrice}</td>
            <td class="qty">${i.productQuantity}</td>
            <td class="total">${i.totalPrice}</td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">GRAND TOTAL</td>
            <td>${i.totalPrice}</td>
        </tr>
        </tfoot>
    </table>
    <div align="center">
    <export:formats formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />
    </div>
    <div id="thanks">Thank you!</div>
    <div id="notices">
        <div>NOTICE:</div>
        <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.<g:link controller="user" action="dash"><button type="button" class="btn btn-sm btn-primary btn-create">Dashboard</button></g:link></div>
    </div>
</main>
</g:each>
</body>

</html>