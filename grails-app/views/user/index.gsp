<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/24/2017
  Time: 4:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.gsp" %>
<html>
<head>
    <title>Suyoj Hand Knit Craft</title>
    <link rel="shortcut icon" href="wool.png" />
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'wool.png')}" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Josefin+Sans|Lobster" rel="stylesheet">
    <link rel="apple-touch-icon" sizes="192x192" href="VAADIN/themes/apptheme/icon-192.png">
    <link rel="apple-touch-icon" sizes="96x96" href="VAADIN/themes/apptheme/icon-96.png">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
    <!-- Enable these to hide browser controls when app is started from homescreen:
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-capable" content="yes">
  -->
    <style>
    @font-face {
        font-family: 'Indie Flower', cursive;
        /*src: url(VAADIN/themes/valo/fonts/open-sans/OpenSans-Light-webfont.woff) format("woff");*/
        font-weight: 300;
        font-style: normal;
    }

    @font-face {
        font-family: 'Indie Flower', cursive;
        /*src: url(VAADIN/themes/valo/fonts/open-sans/OpenSans-Semibold-webfont.woff) format("woff");*/
        font-weight: 600;
        font-style: normal;
    }

    html {
        background: linear-gradient(145deg, #484962 30%, #d06b41 100%);
    }

    @media (min-width: 1000px) {
        /* load on wide screens */
        body {
            background-color: transparent;
            background-image: url(VAADIN/themes/apptheme/bg.jpg);
           /* background-image: url(${resource(dir: 'images', file: 'apple-touch-icon.png')});*/
            background-size: cover;
        }
    }

    #button-submit {
        background-color: #4b4b65;
    }

    #logo {
        display: inline-block;
        width: 60px;
        height: 60px;
        border-radius: 100%;
        background-image: url(${resource(dir: 'images', file: 'wool.png')});
        background-size: contain;
        background-repeat: no-repeat;
        background-color: rgba(255, 255, 255, 0.2);
        box-shadow: 3px 3px 8px rgba(0, 0, 0, .2);
    }
    /* Layout */

    *,
    *:before,
    *:after {
        box-sizing: border-box;
    }

    html,
    body {
        height: 100%;
        font-family: 'Indie Flower', cursive;
        margin: 0;
    }

    #info {
        color: #fff;
        text-align: center;
        padding: 28px;
    }

    #form {
        height: 100%;
        display: flex;
        background-color: #fff;
        justify-content: center;
    }
    /* Responsive behaviour */

    @media (max-width: 1000px) {
        h2 {
            display: none;
        }
    }

    @media (min-width: 1001px) {
        body {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        #logo {
            width: 96px;
            height: 96px;
        }
        #info,
        #form {
            height: 450px;
            box-shadow: 0 2px 3px rgba(0, 0, 0, .2);
            font-size: 20px;
            font-family: 'Josefin Sans', sans-serif;
        }
        #info {
            background-color: rgba(255, 255, 255, .2);
            width: 465px;
            border-radius: 5px 0 0 5px;
        }
        #form {
            width: 320px;
            padding: 28px;
            border-radius: 0 5px 5px 0;
        }
    }
    /* Elements / components theme */

    h1 {
        font-size: 40px;
        font-weight: 100;
        color: black;
    }

    h2 {
        font-size: 35px;
        font-weight: 100;
        margin-bottom: 14px;
    }

    form {
        max-width: 320px;
    }

    label {
        font-size: 20px;
        padding: 16px 0 5px 0;
        display: inline-block;
    }

    input[type='text'],
    input[type='password'] {
        width: 100%;

        -webkit-appearance: none;
        -moz-appearance: none;
        -ms-appearance: none;
        -o-appearance: none;
        appearance: none;

        font: inherit;
        font-size: 14px;

        height: 37px;
        border-radius: 4px;
        padding: 4px 9px;
        border: 1px solid rgba(0, 0, 0, .2);
    }

    #button-submit {
        width: 100%;
        margin-top: 37px;
        height: 37px;
        border: 1px solid #666;
        border-radius: 4px;
        background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.2) 2%, rgba(0, 0, 0, 0.1) 98%);
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), inset 0 -1px 0 rgba(0, 0, 0, 0.2), 0 2px 3px rgba(0, 0, 0, 0.05);
        outline: none;
        cursor: pointer;
        color: #fff;
        text-align: center;
        position: relative;
        font: inherit;
        font-weight: 600;
    }

    #button-submit:focus:after {
        box-shadow: 0 0 0 2px rgba(0, 0, 0, .5);
        content: "";
        position: absolute;
        top: -2px;
        right: -2px;
        bottom: -2px;
        left: -2px;
        border-radius: inherit;
    }

    .error input {
        display: block;
        border-color: red;
    }

    .error form:after {
        content: "The username and password you entered do not match our records. Please double-check and try again.";
        display: block;
        border: 1px solid red;
        border-radius: 4px;
        width: 100%;
        margin-top: 16px;
        font-size: 14px;
        padding: 8px;
    }
    </style>
</head>

<body>

<div id="info">
    <div id="logo"></div>
    <h1>Suyoj Hand Knit Craft</h1>
    <p>Thahity, Thamel Marg, 44600
        <br>
        <br>+977-9843229971</p>
</div>
<div id="form">
    <g:form  method="post" controller="user" action="dashboard" name="theform">
        <h2>Sign in</h2>
        <label id="login-label" for="login">Email</label>
        <input type="text" id="login" name="email" aria-labelledby="login-label" autofocus required>
        <label id="password-label" for="password">Password</label>
        <input type="password" id="password" name="password" aria-labelledby="password-label" required>
        <input id="button-submit" type="submit" value="Log In">
    </g:form>
</div>
%{--<script type="text/javascript">
    function init() {
        if (document.form.username.value == "") {
            alert("Please enter the username");
            document.form.username.focus();
        } else if (document.form.password.value == "") {
            alert("Please enter the password");
            document.form.password.focus();
        }
        return false;
    }
</script>--}%
</body>

%{--<body>
<g:form controller="user" action="dashboard">
    Username : <input type="email" name="email" placeholder="Enter email"> <br> <br>
    Password : <input type="password" name="password" placeholder="Enter password"> <br> <br>
    <input type="submit" value="Log In">
</g:form>
</body>--}%
</html>