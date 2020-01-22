<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>

    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
            <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet"
                  href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
    	<link rel = "stylesheet" type="text/css" href ="/css/style.css"/>
</head>
<body>


<div class="jumbotron">
<h2>${modeTitle} Todo</h2>
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>
                <form:label path="title">Title</form:label>
            </td>
            <td>
                <form:input path="title"></form:input>
            </td>
            <td>
                <form:errors path="title"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">Description</form:label>
            </td>
            <td>
                <form:textarea path="description" cols="40" rows="25"></form:textarea>
            </td>
            <td>
                <form:errors path="description"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <label>Actions</label>
            </td>
            <td>
                <form:button name="cancel" class="btn-primary">Cancel</form:button>
                &nbsp;
                <input type="submit" name="submit" class ="btn-primary" value="Submit">
            </td>
        </tr>
    </table>
</form:form>




	<script src="./js/validation.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/JQuery/jquery-2.1.3.min.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.19.1/jquery.validate.min.js"></script>








</body>
</div>
</html>
