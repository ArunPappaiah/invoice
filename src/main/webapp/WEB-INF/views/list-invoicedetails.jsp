<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Invoice Details List</title>
</head>
<body>
	<div id="table root">
	<table>
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