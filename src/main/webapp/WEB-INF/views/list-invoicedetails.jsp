<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>All Invoice Details List</title>
<style><%@include file="/WEB-INF/css/listinvoicedetails.css"%></style>
</head>
<body>
	<div id="table root" class="center">
	<table border=1>
	<caption>Invoice Details Lists</caption>
	<thead>
		<tr>
		<th>Invoice Number</th>
		<th>Product Id</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>GST</th>
		<th>Amount</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="invoice" items="${allinvoicedetails}">
			<tr>
			<td>${invoice.invoiceNumber}</td>
			<td>${invoice.productId}</td>
			<td>${invoice.quantity}</td>
			<td>${invoice.price}</td>
			<td>${invoice.gst}</td>
			<td>${invoice.amount}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>