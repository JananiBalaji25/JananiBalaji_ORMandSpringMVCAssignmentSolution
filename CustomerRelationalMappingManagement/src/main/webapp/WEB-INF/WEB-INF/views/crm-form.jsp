<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Profiles</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
.data {
	font-size: large;
	color: red;
	font-family: 'Arial', ' Helvetica', 'sans-serif';
}
</style>

</head>
<body>
	<div class="container p-3 my-3 bg-dark text-white">
		<h1 style="text-align: center;">CRM</h1>
		<hr style="background-color: gold; height: 2px;">
		<h3 style="text-align: center;">CRM management</h3>
		<hr style="background-color: gold; height: 2px;">
		<p>
			<a href="crm/list" class="btn btn-light">Profiles</a>
			<a href="crm/list" class="btn btn-light">Add profiles</a>
		</p>
		<hr style="background-color: rgb(255, 0, 0); height: 1px;">
	</div>

	<div class="container">
		<h4 style="text-align: center;">Profiles Registration Form</h4>

		<form action="save" method="post">

			<div class="form-group">
				<input type="hidden" class="form-control" placeholder="Enter id"
					name="id" value="${crm.id}">
			</div>

			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter Name"
					name="fname" value="${crm.fname}">
			</div>

			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter last name" name="lname"
					value="${crm.lname}">
			</div>

			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter email"
					name="email" value="${crm.email}">
			</div>

			<button class="btn btn-outline-warning btn-lg type="
				submit" class="btn btn-primary">Save</button>

		</form>


	</div>


</body>
</html>