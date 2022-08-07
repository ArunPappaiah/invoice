<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Lists</title>
</head>
<body bgcolor=gray>
	<div id="table root">
	<table border=1>
	<thead>
		<tr>
		<th bgcolor=silver>Product Id</th>
		<th bgcolor=silver>Product Name</th>
		<th bgcolor=silver>Category</th>
		<th bgcolor=silver>Price</th>
		<th bgcolor=silver>GST Rate</th>
		<th bgcolor=silver>Description</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="product" items="${allproducts}">
			<tr>
			<td bgcolor=lightblue>${product.productId}</td>
			<td bgcolor=lightblue>${product.productName}</td>
			<td bgcolor=lightblue>${product.categories}</td>
			<td bgcolor=lightblue>${product.price}</td>
			<td bgcolor=lightblue>${product.gstRate}</td>
			<td bgcolor=lightblue>${product.descriptions}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>