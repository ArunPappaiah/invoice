<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoices List</title>
</head>
<body bgcolor=gray>
	<div id="table root">
	<table border=1>
	<thead>
		<tr>
		<th bgcolor=silver>Invoice Number</th>
		<th bgcolor=silver>Invoice Date</th>
		<th bgcolor=silver>Customer Id</th>
		<th bgcolor=silver>Product Id</th>
		<th bgcolor=silver>Transportation Charge</th>
		<th bgcolor=silver>Total Amount</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="invoice" items="${allinvoices}">
			<tr>
			<td bgcolor=lightblue>${invoice.invoiceNumber}</td>
			<td bgcolor=lightblue>${invoice.invoiceDate}</td>
			<td bgcolor=lightblue>${invoice.customerId}</td>
			<td bgcolor=lightblue>${invoice.productId}</td>
			<td bgcolor=lightblue>${invoice.transportationCharges}</td>
			<td bgcolor=lightblue>${invoice.totalAmount}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>