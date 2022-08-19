<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of customer invoices</title>
<style><%@include file="/WEB-INF/css/listcustomerinvoices.css"%></style>
</head>
<body>
	<div id="root">
	<div id="registration-form">
	<div class='fieldset'>
		<div id="customerform">
			<form:form action="" method="post"
				modelAttribute="getcustomerinvoices">
				<h1>Customer Details</h1>
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
						<form:input path="address" style="width: 30%"  readonly="true"/><!-- height:100px, -->
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
	</div>
	</div><br>
	<div id="invoicelist">
	<table border=1 class="styled-table">
		 <caption>Customer Invoices List</caption>
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
		</table><br>
		<button type="button" name="back" onclick="history.back()">back</button>
		</div>
	</div>
</body>
</html>