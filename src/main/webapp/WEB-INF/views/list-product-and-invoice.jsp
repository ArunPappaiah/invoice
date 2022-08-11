<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Product And Invoice</title>
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
<body bgcolor=pink>
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
	<div id="getinvoice" align="center">
	<h1>Product Invoices List</h1>
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
			<c:forEach var="invoice" items="${getinvoice}">
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
	</div>
</body>
</html>