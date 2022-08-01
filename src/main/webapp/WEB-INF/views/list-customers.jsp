<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Customers</title>
</head>
<body>
	<div id="table root">
	<table>
	<thead>
		<tr>
		<th>Customer Id</th>
		<th>Customer Name</th>
		<th>Phone Number</th>
		<th>Address</th>
		<th>Email</th>
		<th>City</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="customer" items="${allcustomers}">
			<tr>
			<td>${customer.customerId}</td>
			<td>${customer.customerName}</td>
			<td>${customer.phoneNumber}</td>
			<td>${customer.address}</td>
			<td>${customer.email}</td>
			<td>${customer.city}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>