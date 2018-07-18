<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/24/2017
  Time: 4:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
%{--
<html>
<head>

    <title>Suyoj Hand Knit Craft</title>

    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">


</head>

<body>
<h1>Welcome ${u.name}</h1>
<g:link action="workingPlace" controller="user">Working Place</g:link>
<g:link action="add" controller="product"> Add Product </g:link> <br>
<g:link action="productList" controller="product"> Show Product </g:link> <br>
<g:link action="todaySale" controller="product"> Today's Sale </g:link> <br>
<g:link action="bill" controller="product"> Create Bill </g:link> <br>
<g:link action="logout" controller="user"> Logout </g:link>
</body>

</html>--}%
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'dash.png')}" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Suyoj Hand Knit Craft</title>
    <!-- Bootstrap Core CSS -->
    %{--<link href="css/bootstrap.min.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
    <!-- Custom CSS -->
    %{--<link href="css/sb-admin.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'sb-admin.css')}" type="text/css">
    <!-- Morris Charts CSS -->
    %{--<link href="css/plugins/morris.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'morris.css')}" type="text/css">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <style type="text/css">
                          * {
                              box-sizing: border-box
                          }
    /* Slideshow container */

    .slideshow-container {
        max-width: 45%;
        position: relative;
        margin: auto;
    }
    /* Hide the images by default */

    .mySlides {
        display: none;
    }
    /* Next & previous buttons */

    .prev,
    .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        margin-top: -22px;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
    }
    /* Position the "next button" to the right */

    .next {
        right: 0;
        border-radius: 3px 0 0 3px;
    }
    /* On hover, add a black background color with a little bit see-through */

    .prev:hover,
    .next:hover {
        background-color: rgba(0, 0, 0, 0.8);
    }
    /* Caption text */

    .text {
        color: #d1ecf1;
        font-size: 12px;
        padding: 3px 8px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
    }
    /* Number text (1/3 etc) */

    .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 5px;
        position: absolute;
        top: 0;
    }
    /* The dots/bullets/indicators */

    .dot {
        cursor: pointer;
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
    }

    .active,
    .dot:hover {
        background-color: #717171;
    }
    /* Fading animation */

    .fade {
        -webkit-animation-name: fade;
        -webkit-animation-duration: 1.5s;
        animation-name: fade;
        animation-duration: 1.5s;
    }

    @-webkit-keyframes fade {
        from {
            opacity: .4
        }
        to {
            opacity: 1
        }
    }

    @keyframes fade {
        from {
            opacity: .4
        }
        to {
            opacity: 1
        }
    }

    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="www.suyojhandknitcraft.com">Suyoj Hand Knit Craft</a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <g:link action="logout" controller="user" class="dropdown -toggle" data-toggle="dropdown">Logout</g:link>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active">
                    <g:link action="profile" controller="user">Welcome ${u.name}</g:link>
                </li>
                <li>
                    <g:link action="add" controller="product">Add Product</g:link>
                </li>
                <li>
                    <g:link action="profile" controller="user">Show User</g:link>
                </li>
                <li>
                    <g:link action="productList" controller="product">Product List</g:link>
                </li>
                <li>
                    <g:link action="todaySale" controller="bill">Today's Sale </g:link>
                </li>
                <li>
                    <g:link action="createBill" controller="bill">Create Bill</g:link>
                </li>
                <li>
                    <g:link action="gallery" controller="product">Gallery</g:link>
                </li>
               %{-- <li>
                    <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                </li>
                <li>
                    <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                </li>--}%
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

<div id="page-wrapper">
    <div class="container-fluid">
        <div style="height: auto;width: auto">
        <div class="slideshow-container">
            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="../images/gallery/cashmere.jpg" style="width:100%" >
                <div class="text"> Cashmere Shawl</div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="../images/pashmina.jpg" style="width:100%">
                <div class="text"> Pashmina Shawl</div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="../images/scarf.jpg" style="width:100%">
                <div class="text"> Water Shawl</div>
            </div>
            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
        <!-- The dots/circles -->
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
        </div>
    </div>
</div>

</div>
<script type="text/javascript">
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>
</body>

</html>