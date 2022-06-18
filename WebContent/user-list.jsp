<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>User Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"> User
     Management App </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Users</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
     New User</a>
                    </div>
                    <br>
                     <!--   for (Todo todo: todos) {  -->
                     
                            <c:forEach var="user" items="${listUser}">
								<div class="card" style="width: 100%;">
	<div class="row">
    <div class="col">
    <img class="card-img-top" src="data:image/jpg;base64,${user.base64Image}" />
    </div>
    <div class="col">
      <div class="card-body">
    <h5 class="card-title"><c:out value="${user.name}" /></h5>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><c:out value="${user.email}" /></li>
    <li class="list-group-item"><c:out value="${user.country}" /></li>
    <li class="list-group-item"><c:out value="${user.id}" /></li>
  </ul>
  <a class="btn btn-warning btn-lg btn-block" href="edit?id=<c:out value='${user.id}' />">Edit</a>
  <a class="btn btn-danger btn-lg btn-block" href="delete?id=<c:out value='${user.id}' />">Delete</a>
    </div>
  </div>							
  
</div>
                               
                            </c:forEach>
                            <!-- } -->
                    
                    </div>
            </div>
         
        </body>

        </html>