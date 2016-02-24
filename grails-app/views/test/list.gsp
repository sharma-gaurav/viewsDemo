<html>
<body>
    <table>
        <tr>
            <th>Name</th>
            <th>Age</th>
        </tr>
        <g:each var="person" in="${personList}">
            <tr>
                <td>${person.name}</td>
                <td>${person.age}</td>
            </tr>
        </g:each>
    </table>
    <g:paginate next="Forward" prev="Back"
            max="5" maxsteps="2" controller="test"
            action="list" total="${total}" />


<g:uploadForm name="myUpload" action="list" controller="test">
    <input type="file" name="myFile" />
    <g:submitButton name="submit" value="submit"/>
</g:uploadForm>

</body>
</html>