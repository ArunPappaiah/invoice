<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of customer invoices</title>
<style type="text/css">
	body {
	background-image:
		url("https://cdn.99images.com/photos/wallpapers/creative-graphics/pastel-blue%20android-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-mtx2z.png");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div id="root">
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
	<div id="invoicelist" align="center">
	<h1>Customer Invoices List</h1>
	<table border=1>
		<thead>
		<tr>
		<th bgcolor=silver>Invoice Number</th>
		<th bgcolor=silver>Invoice Date</th>
		<th bgcolor=silver>Customer Id</th>
		<th bgcolor=silver>Transportation Charge</th>
		<th bgcolor=silver>Total Amount</th>
		</tr>
	</thead>
		<tbody>
			<c:forEach var="invoice" items="${invoicelist}">
			<tr>
			<td bgcolor=lightblue>${invoice.invoiceNumber}</td>
			<td bgcolor=lightblue>${invoice.invoiceDate}</td>
			<td bgcolor=lightblue>${invoice.customerId}</td>
			<td bgcolor=lightblue>${invoice.transportationCharges}</td>
			<td bgcolor=lightblue>${invoice.totalAmount}</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
	</div>
</body>
</html>