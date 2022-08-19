<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Customers</title>
<style><%@include file="/WEB-INF/css/listcustomers.css"%></style>
</head>
<body class="center">
	<div id="table root">
	<table border=1 class="styled-table">
	<caption>List of Customers</caption>
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
			<tr class="active-row">
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
	<button type="button" name="back" onclick="history.back()">back</button>
</body>
</html>