<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Customers</title>
</head>
<body bgcolor=gray>
	<div id="table root">
	<table border=1>
	<thead>
		<tr>
		<th bgcolor=silver>Customer Id</th>
		<th bgcolor=silver>Customer Name</th>
		<th bgcolor=silver>Phone Number</th>
		<th bgcolor=silver>Address</th>
		<th bgcolor=silver>Email</th>
		<th bgcolor=silver>City</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="customer" items="${allcustomers}">
			<tr>
			<td bgcolor=lightblue>${customer.customerId}</td>
			<td bgcolor=lightblue>${customer.customerName}</td>
			<td bgcolor=lightblue>${customer.phoneNumber}</td>
			<td bgcolor=lightblue>${customer.address}</td>
			<td bgcolor=lightblue>${customer.email}</td>
			<td bgcolor=lightblue>${customer.city}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>