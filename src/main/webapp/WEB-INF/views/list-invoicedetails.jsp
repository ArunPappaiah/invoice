<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Invoice Details List</title>
</head>
<body bgcolor=gray>
	<div id="table root" align="center">
	<h1>Invoice Details Lists</h1>
	<table border=1>
	<thead>
		<tr>
		<th bgcolor=silver>Invoice Number</th>
		<th bgcolor=silver>Product Id</th>
		<th bgcolor=silver>Quantity</th>
		<th bgcolor=silver>Price</th>
		<th bgcolor=silver>GST</th>
		<th bgcolor=silver>Amount</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="invoice" items="${allinvoicedetails}">
			<tr>
			<td bgcolor=lightblue>${invoice.invoiceNumber}</td>
			<td bgcolor=lightblue>${invoice.productId}</td>
			<td bgcolor=lightblue>${invoice.quantity}</td>
			<td bgcolor=lightblue>${invoice.price}</td>
			<td bgcolor=lightblue>${invoice.gst}</td>
			<td bgcolor=lightblue>${invoice.amount}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>