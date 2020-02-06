<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>${modeTitle} Todo</title>


</head>
<body>
<div class="bg">

<h2 class="text-center">${modeTitle} Todo</h2>
<div class="form-group">
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo" class="was-validated">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>
                <form:label path="title">Title</form:label>
            </td>
            <td>
                <form:input path="title" class="form-control" placeholder="Enter Title"></form:input>
            </td>
            <td>
                <form:errors path="title"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description" for="validationTextarea">Description</form:label>
            </td>
            <td>
                <form:textarea  path="description" cols="30" rows="20" class="form-control" placeholder="Enter Description" ></form:textarea>
                <div class="invalid-feedback">
                      Please enter a message in the textarea
                    </div>
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
</div>
</div>

<script src="./js/validation.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/JQuery/jquery-2.1.3.min.js"></script>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.19.1/jquery.validate.min.js"></script>

</body>

</html>
