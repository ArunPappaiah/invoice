<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Lists</title>
</head>
<body>
	<div id="table root">
	<table>
	<thead>
		<tr>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Category</th>
		<th>Price</th>
		<th>GST Rate</th>
		<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="product" items="${allproducts}">
			<tr>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.categories}</td>
			<td>${product.price}</td>
			<td>${product.gstRate}</td>
			<td>${product.descriptions}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>