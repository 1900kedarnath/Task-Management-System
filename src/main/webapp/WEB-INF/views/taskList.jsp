<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page import="java.util.*" %>
  <%@page import="com.cf.entity.*" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Task Management</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">Task Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white" aria-current="page" href="/">Home</a>
        </li>
        
      </ul>
     
    </div>
  </div>
</nav>
<div class = "container my-5">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">TaskName</th>
      <th scope="col">StartDate</th>
      <th scope="col">EndDate</th>
       <th scope="col">Status</th>
       <th scope="col">Note</th>
    </tr>
  </thead>
  
  <tbody>
    <c:forEach items="${task}" var="b">
 <tr>
      <td> ${b.id}</td>
      <td> ${b.name}</td>
      <td>${b.startDate}</td>
      <td>${b.endDate}</td>
      <td>${b.status}</td>
      <td>${b.note}</td>
      
    </tr>
    </c:forEach>
  </tbody>
</table>


</div>

  </body>
</html>