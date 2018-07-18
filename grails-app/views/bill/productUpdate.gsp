<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/4/2017
  Time: 7:26 AM
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
    $('#productCode').keypress(function (e) {
    console.log("user is pressing key");
    if(e.which==13){
        var value=$('#productCode').val();
        console.log(value);

        callAjax(value);
    }
});
function callAjax(value) {
    $.ajax({
        type:'POST',
        url:"${createLink(controller: "bill",action: "getdata")}",

        data:{v:value},

        success: function(response) {
            $('#productName').val(response);
        },
        error: function(response) {

        }
    });
}
</g:javascript>
<r:layoutResources/>
</body>
</html>