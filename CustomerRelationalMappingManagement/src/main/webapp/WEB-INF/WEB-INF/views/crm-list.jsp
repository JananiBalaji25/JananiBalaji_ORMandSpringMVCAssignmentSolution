<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crm Profiles</title>
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
	color: gold;
	font-family: 'Arial', ' Helvetica', 'sans-serif';
	border: solid;
}
</style>
</head>
<body>
	<div class="container bg-dark p-7 my-6 border data" >
		<h1 style="text-align: center;">Customer Relational Mapping</h1>
		<hr style="background-color: red; height: 1px;">
		<h3 style="text-align: center;">Graded Project</h3>
		<hr style="background-color: red; height: 1px;">
		<p>
		<div class="btn-group">
			<a href="/crm/list" class="btn btn-info">View Profile</a> <a
				href="showForm" class="btn btn-primary">Add Profile</a>

		</div>
		</p>

		<hr style="background-color: red; height: 1px;">
	</div>

	<div class="container">
		<h2>All Profiles</h2>
		<p>list of all Profiles</p>
		<table class="table table-dark data">
			<thead>
				<tr>
					<th>S.No</th>
					<th>fname</th>
					<th>lname</th>
					<th>email</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="crm" items="${crm}" varStatus="c">
				<tbody>
					<tr>
						<td>${c.count}</td>
						<td>${crm.fname}</td>
						<td>${crm.lname}</td>
						<td>${crm.email}</td>
						<td><div class="btn-group">
						<a href="update?id=${crm.id}" class="btn btn-success">Update</a>
							<a href="delete?id=${crm.id}" class="btn btn-danger"
							onclick="if (!(confirm('Are you sure you want to delete this Profile?'))) return false">Delete</a>  </div></td>
                         


					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>