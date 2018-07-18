<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/24/2017
  Time: 4:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Website CSS style -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="../bootstrap/css/add.css">
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

    <title>Add Product</title>
</head>

<body>
%{--<div id="add">
    <div id="first">
<g:form method="post" action="save" onsubmit="return validateForm()">
    <div class="form-group">
        <label for="usr">Product Code :</label>
<input type="text" name="productCode" placeholder="Product id" class="form-control" id="usr">
    </div>
    <div class="form-group">
        <label for="usr1">Product Name :</label>
<input type="text" name="productName" placeholder="Product Name" class="form-control" id="usr1">
    </div>
<div class="form-group">
        <label for="usr2">Product Price:</label>
<input type="number" name="productPrice" placeholder="Product Price" class="form-control" id="usr2">
</div>
<div class="form-group">
        <label for="usr3">Product Quantity:</label>
<input type="text" name="productQuantity" placeholder="Product Quantity" class="form-control" id="usr3">
</div>
    <br>
    <br>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btn btn-success" value="SAVE" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" class="btn btn-danger" value="RESET">


</g:form>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-info" value="BACK"> <g:link action="dash" controller="user" class="back">BACK</g:link></button>
    </div>
</div>

<g:javascript>

function validateForm() {
    console.log("test");
   /*var quantity = document.getElementById("usr3");

   if(isNaN(quantity)){
       alert("product quantity must be number");
   }*/
}

</g:javascript>
<r:layoutResources/>--}%



<div class="container">
    <div class="row main">
        <div class="main-login main-center">
            <h5>Add Product</h5>
<g:form method="post" action="save" onsubmit="return validateForm()">

                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Product Code :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-spinner" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="productCode" id="name"  placeholder="Enter product code" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Product Name :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="productName" id="email"  placeholder="Enter product name" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="username" class="cols-sm-2 control-label">Product Price :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-money " aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="productPrice" id="username"  placeholder="Enter product price" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Product Quantity :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-balance-scale" aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="productQuantity" id="password"  placeholder="Enter product quantity" required/>
                        </div>
                    </div>
                </div>


<br>
                <div class="form-group ">
                    <input type="submit" class="btn btn-success" value="SAVE" >&nbsp;&nbsp; <input type="reset" class=" btn btn-danger" value="Reset" align="right"> <g:link controller="user" action="dash"><button type="button" class="btn  btn-primary btn-create">Back</button></g:link>
                </div>

</g:form>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../bootstrap/js/bootstrap.min.js"></script>

<r:layoutResources/>

</body>
</html>
