<%@ page import="com.intelligrape.Gender;" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>

%{--<g:form name="myForm" url="[action:'index', params:[:]]">--}%
<g:form name="myForm">
    <input type="text" name="name"/><br/>
    <g:hiddenField name="myField" value="myValue" /><br/>
    Select 1 value : <br/>
    <g:radio name="myGroup" value="1"/> value 1 <br/>
    <g:radio name="myGroup" value="2" checked="true"/> value 2 <br/>

    <g:select name="age" from="${Gender.values()}"
              optionValue="displayText"
              noSelection="['':'-Choose your age-']"/>

    <g:actionSubmit action="delete" name="Delete" value="Delete"/>
    <g:actionSubmit action="edit" name="Edit" value="Edit"/>
</g:form>
<g:form name="myForm" controller='book' action='list' params="">...</g:form>

Hello ${name}
</body>
</html>


