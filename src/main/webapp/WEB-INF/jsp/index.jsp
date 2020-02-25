<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <title>Todo List</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


</head>
<body>
<div class="bg">
 <div class="container" ><br/>
<h2 style="align:center;">Todo Items</h2>
        </div>
<nav class="navbar navbar-dark bg-dark">


  <a href="${pageContext.request.contextPath}/todo/create">New</a>

</nav>
<div class="alert alert-success">

                <strong>Success!</strong> Welcome to the Todo Application.
     </div>

<div class="container" style="margin:70px;">
<div class="row" style="background-color:#ffffff;">
  <div class="col">Title</div>
  <div class="col">Completed</div>
  <div class="col">Action</div>
</div>

<c:forEach var="todo" items="${todos}">
<div class="row" style="background-color:#ffffff;">
  <div class="col" >${todo.title}</div>
  <div class="col">${todo.completed}</div>
  <div class="col">

  <a  class="btn-warning" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
              &nbsp;
              <a class="btn-primary" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
              &nbsp;
              <a  class="btn-danger" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>

  </div>
  <hr>
</div>
</c:forEach>
</div>
</div>

</div>
</div>
</body>
</html>
