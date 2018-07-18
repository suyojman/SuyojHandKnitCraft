<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/27/2017
  Time: 3:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Bill</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Website CSS style -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="../bootstrap/css/add.css">
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

    <g:javascript library="jquery"></g:javascript><r:layoutResources/>
</head>

<body>
%{--<div id="add">
    <div id="first">
<g:form method="post" controller="bill" action="save">
    <div class="form-group">
     <label for="usr">Customer Name :</label>
 <input type="text" name="customerName" placeholder="Customer Name" class="form-control" id="usr">
    </div>
    <div class="form-group">
     <label for="code">Product Code :</label>
 <input type="text" name="productCode" placeholder="Product id" class="form-control" id="code">
    </div>

    <div class="form-group">
    <label for="productName">Product Name :</label>
<input type="text" name="productName" placeholder="Product Name" class="form-control" id="productName">
    </div>
    <div class="form-group">
    <label for="productPrice">Product Price :</label>
<input type="text" name="productPrice" placeholder="Product Price" class="form-control" id="productPrice">
    </div>
    <div class="form-group">
    <label for="productQuantity">Product Quantity :</label>
<input type="text" name="productQuantity" placeholder="Product Quantity" class="form-control" id="productQuantity">
    </div>
    <div class="form-group">
    <label for="totalPrice">Total Price :</label>
<input type="text" name="totalPrice" class="form-control" id="totalPrice">
    </div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="btn btn-success" value="Submit Bill" id="buttonSubmit">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <g:link action="dash" controller="user"> <input type="button" class="btn btn-info" value="Back" /></g:link>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" class="btn btn-danger" value="RESET">




</g:form>--}%
<div class="container">
    <div class="row main">
        <div class="main-login main-center">
            <h5>Bill Maker :</h5>
            <g:form method="post" controller="bill" action="save">

                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Customer Name :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-blind" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="customerName" id="name"  placeholder="Enter customer name" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="code" class="cols-sm-2 control-label">Product Code :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-spinner" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="productCode" id="code"  placeholder="Enter product code" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="productName" class="cols-sm-2 control-label">Product Name :</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="		fa fa-cloud" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="productName" id="productName"  placeholder="Enter product name" required/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="productPrice" class="cols-sm-2 control-label">Product Price:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-money" aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="productPrice" id="productPrice"  placeholder="Enter product price" required/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="productQuantity" class="cols-sm-2 control-label">Product Quantity:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-balance-scale" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="productQuantity" id="productQuantity" placeholder="Enter product quantity" required/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="totalPrice" class="cols-sm-2 control-label">Total Price:</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-money" aria-hidden="true"></i></span>
                            <input type="number" class="form-control" name="totalPrice" id="totalPrice"  required/>
                        </div>
                    </div>
                </div>
                <br>
                <div class="form-group ">
                    <input type="submit" class="btn btn-success" value="Submit Bill" >&nbsp;&nbsp; <input type="reset" class=" btn btn-danger" value="Reset" align="right"> <g:link controller="user" action="dash"><button type="button" class="btn  btn-primary btn-create">Back</button></g:link>
                </div>

            </g:form>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<g:javascript>
var value=$('#code').val();


$('#code').keypress(function (e) {
    console.log("user ")
    if(e.which==13){
        var value=$('#code').val();
        callAjax(value);
        // callAjax1(value);

    }

});

$('#productQuantity').keypress(function(e) {
    if(e.which==13){
        var productQuantity=$('#productQuantity').val();


        var price = $('#productPrice').val();
        var total = (productQuantity*price);
         $('#totalPrice').val(total);
    }
    });

function callAjax(value) {
    $.ajax({
        type:'POST',
        url:"${createLink(controller: "product", action: "viewProductName")}",
        data:{v:value},

        success:function(response) {

            var res = response.split(":");
          $('#productName').val(res[0]);
          $('#productPrice').val(res[1]);

        },

        error:function(response) {

        }
    });
    }



function callAjax1(value) {
    $.ajax({
        type:'POST',
        url:"${createLink(controller: "product", action: "viewProductPrice")}",
        data:{v:value},

        success:function(response) {
          $('#productPrice').val(response);
        },

        error:function(response) {

        }
    });
}
/*
$('#buttonSubmit').on("click",function(){
   document.querySelector("form").submit();
});
*/

</g:javascript>
  <r:layoutResources/>
</body>
</html>