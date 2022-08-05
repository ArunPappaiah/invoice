<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of customer invoices</title>
</head>
<body>
	<div id="root">
		<div id="customerform">
			<form:form action="" method="post"
				modelAttribute="getcustomerinvoices">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId"/>
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Email Id</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" readonly="true"/>
					</div>
				</div>
		</form:form>
	</div>
	<div id="invoicelist">
	<table>
		<thead>
		<tr>
		<th>Invoice Number</th>
		<th>Invoice Date</th>
		<th>Customer Id</th>
		<th>Transportation Charge</th>
		<th>Total Amount</th>
		</tr>
	</thead>
		<tbody>
			<c:forEach var="invoice" items="${invoicelist}">
			<tr>
			<td>${invoice.invoiceNumber}</td>
			<td>${invoice.invoiceDate}</td>
			<td>${invoice.customerId}</td>
			<td>${invoice.transportationCharges}</td>
			<td>${invoice.totalAmount}</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
<!-- 	<div id="invoicedetailslist">
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
			<c:forEach var="invoicedetails" items="${invoicedetailslist}">
			<tr>
			<td>${invoicedetails.invoiceNumber}</td>
			<td>${invoicedetails.productId}</td>
			<td>${invoicedetails.quantity}</td>
			<td>${invoicedetails.price}</td>
			<td>${invoicedetails.gst}</td>
			<td>${invoicedetails.amount}</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>   -->
	</div>
</body>
</html>