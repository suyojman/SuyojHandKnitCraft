<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/29/2017
  Time: 4:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search User</title>
    <g:javascript library="jquery"/>
</head>

<body>
<g:each var="user" in="${searchResult?.results}">
    <h2>${user.name}</h2>
    <p>${user.email}</p>
</g:each>
</body>
</html>