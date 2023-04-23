<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <%@page import="java.util.*" %>
  <%@page import="com.cf.entity.*" %>
<!doctype html>
<html lang="en" >
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Assigntask</title>
</head>
<body>
	<!--  <nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand text-white" href="#">Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="available_books">Available Books</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="my_books">My
							Books</a></li>
				</ul>
				<div>
					<a class="nav-link text-white" href="bookregister">NewBooks
						Register</a>
				</div>
			</div>
		</div>
	</nav>-->
	<div class="container my-5 p-5" style="border: 1px solid black;">
		<h4 class="text-center">Assign Task</h4>
		<form:form  action="save" method="post" modelAttribute="task">
			<div class="mb-3">
				<label for="name" class="form-label">Task Name </label> <input
					type="text" class="form-control" name="name">
			</div>
			
			<div class="mb-3">
				<label for="startDate" class="form-label">Start Date</label> <input
					type="date" class="form-control" name="startDate">
			</div>
			
			<div class="mb-3">
				<label for="endDate" class="form-label">End Date </label> <input
					type="date" class="form-control" name="endDate">
			</div>
			<div class="mb-3">
				<label for="status" class="form-label">Status</label> <input
					type="text" class="form-control" name="status">
			</div>
		<div class="mb-3">
				<label for="note" class="form-label">Note</label> <input
					type="text" class="form-control" name="note">
			</div>	
	
	<center><button type="submit" class="btn btn-primary">Submit Task</button></center>
	</form:form>
	</div>

	

</body>
</html>