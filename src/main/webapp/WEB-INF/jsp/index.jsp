<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
        <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet"
              href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<mvc:resources mapping="/webjars/**" location="/webjars/"/>
 <div class="container"><br/>
            <div class="alert alert-success">

                <strong>Success!</strong> Welcome to the Todo Application.
            </div>
        </div>

<div class="container">
<div class="starter-template">
<h2>Todo Items</h2>
<a href="${pageContext.request.contextPath}/todo/create">New</a>
<table class="table table-striped table-hover table-condensed table-bordered">



<tr>
     <th>Title</th>
     <th>Completed</th>
     <th>Action</th>
    </tr>

    <tbody>
    <c:forEach var="todo" items="${todos}">
    <tr>
        <td>
            ${todo.title}
        </td>
        <td>
            ${todo.completed}
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
        </td>
    </tr>
    </c:forEach>
</table>
</div>
</div>




</body>
</html>
