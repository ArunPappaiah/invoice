<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Product And Invoice</title>
<style><%@include file="/WEB-INF/css/listproductandinvoice.css"%></style>
</head>
<body>
	<div id="root">
		<div id="getproductinvoiceform">
			<form:form action="" method="post"
				modelAttribute="getproduct">
				<h1>Product Details</h1>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" />
					</div>
				</div>
				<div>
				    <label for="categories"> Category</label>
					 <div>
						<form:input path="categories" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="gstRate">GST Rate</label>
					<div>
						<form:input path="gstRate" />
					</div>
				</div>
				<div>
					<label for="descriptions">Description</label>
					<div>
						<form:input path="descriptions" />
					</div>
				</div>
		</form:form>
	</div>
	<div id="getinvoice" class="center">
	<table border=1>
	<caption>Product Invoices List</caption>
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
			<c:forEach var="invoice" items="${getinvoice}">
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
	</div>
</body>
</html>