<html>
<head>
    %{--<meta name="layout" content="main" />--}%
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    %{--<title>This is my pages title</title>--}%
</head>
<body>
Hello!!!! <%= name%>

<g:render template="/shared/mySharedTemplate" model="[name: name, names:names]"/>
%{--<g:render template="/shared/mySharedTemplate" var="name" collection="${names}" />--}%

<%
    Integer a = 30, b=20
    Integer sum=a+b
%>

${ out<< link([action:'index', params:[name: name]])}
<g:link action="index" params="[name:name]"> index </g:link>

<g:link url="[action:'index']" params="[name:name]"> index </g:link>
<g:if test="${session.role == 'superadmin'}">
Superadmin
</g:if>
<g:elseif test="${session.role == 'admin'}">
admin
</g:elseif>
<g:else>
user
</g:else>




<table style="border:1px solid black">
    <g:each in="${[1,2,3]}" var="num">
        <tr>
            <td>Number ${num}</td>
        </tr>
    </g:each>
</table>



<g:set var="num" value="${1}" />
<g:while test="${num < 5 }">
    <p>Number ${num++}</p>
</g:while>




<%--fsadhfkahsdfahsdk--%>
<%=sum%>
</body>
</html>
