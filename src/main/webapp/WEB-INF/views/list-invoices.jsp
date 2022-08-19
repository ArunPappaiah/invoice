<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoices List</title>
<style><%@include file="/WEB-INF/css/listinvoices.css"%></style>
</head>
<body>
	<div id="table root" class="center">
	<table border=1 class="styled-table">
	<caption>Invoices List</caption>
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
			<tr class="active-row">
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
	 <br><br><button onclick="window.print()">Print page</button><br><br>
	 <button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>