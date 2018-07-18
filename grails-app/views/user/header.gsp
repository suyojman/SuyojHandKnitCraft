<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 5/4/2018
  Time: 8:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate")
        response.setHeader("Pragma","no-cache")
        response.setHeader("Expires","0")
if(session.getAttribute("user")==null)
        response.sendRedirect("http://localhost:8080/SuyojHandKnitCraft")
    %>
</head>

<body>

</body>
</html>