<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/30/2017
  Time: 3:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <g:javascript library="jquery"/>
    <r:layoutResources/>
</head>

<body>
<g:render template="data" model="${r}"></g:render>



<g:javascript>
/*var value= $('#name').val();
console.log(value);*/
$('#name').keypress(function (e) {
    console.log("user is pressing key");
    if(e.which==13){
        var value=$('#name').val();
        console.log(value);

        callAjax(value);
    }
});
function callAjax(value) {
    $.ajax({
        type:'POST',
        url:"${createLink(controller: "user",action: "getdata")}",

        data:{v:value},

        success: function(response) {
            $('#email').val(response);
        },
        error: function(response) {

        }
    });
}
</g:javascript>
<r:layoutResources/>
</body>
</html>