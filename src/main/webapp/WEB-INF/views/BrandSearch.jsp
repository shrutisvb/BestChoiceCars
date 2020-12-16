<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Brand</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body{
background-color:tomato;
text-align:center;
}
.action-button {
	width: 100px;
	background: #27AE60;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}
html {
	height: 100%;
	/*Image only BG fallback*/
	
	/*background = gradient + image pattern combo*/
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6));
}

body {
	font-family: montserrat, arial, verdana;
}

#msform fieldset {
	background: white;
	border: 0 none;
	border-radius: 3px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 50px;
	box-sizing: border-box;
	width: 75%;
	margin: 0 10%;
	
	/*stacking fieldsets above each other*/
	position: relative;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}

</style>

</head>
<body bgcolor="tomato">
<div class="container">
<h1>Select Car</h1><center>
<table  class="table table-striped">
	<tr>
		<th></th>
		<th>Brand</th>
		<th>Model</th>
		<th>Year</th>
		<th>No.OfKms</th>
		<th>Price</th>
		<th>Fuel</th>
	</tr>

<c:forEach items="${list1}" var="cars">
	<tr>	
	<form id="msform" action="/bookCar" method="post">
		<td><input type="radio" required name="Model" value="${cars.brand} ${cars.model}"></td>
		<td>${cars.brand}</td>
		<td>${cars.model}</td>
		<td>${cars.year}</td>
		<td>${cars.kms}</td>
		<td>${cars.price}</td>
		<td>${cars.fuel}</td>
	
	</tr>
</c:forEach>
</table>
<input type="submit" value="Bookcar"  class="submit action-button">
<a href="/atBrand" class="btn btn-primary">Back</a>
<a href="/"  class="btn btn-primary">Home</a>
</form></center>
</div>
</body>
</html>