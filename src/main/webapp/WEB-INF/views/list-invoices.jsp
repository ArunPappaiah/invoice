<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoices List</title>
</head>
<body>
	<div id="table root">
	<table>
	<thead>
		<tr>
		<th>Invoice Number</th>
		<th>Invoice Date</th>
		<th>Customer Id</th>
		<th>Product Id</th>
		<th>Transportation Charge</th>
		<th>Total Amount</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="invoice" items="${allinvoices}">
			<tr>
			<td>${invoice.invoiceNumber}</td>
			<td>${invoice.invoiceDate}</td>
			<td>${invoice.customerId}</td>
			<td>${invoice.productId}</td>
			<td>${invoice.transportationCharges}</td>
			<td>${invoice.totalAmount}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>