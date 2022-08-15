<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoicing with GST</title>
<style><%@include file="/WEB-INF/css/indexpage.css"%></style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/fontawesome.min.css">
</head>
<body>
	<div class="hero-image">
	<div class="menu-bar">
	<ul>
	<li class="active"> <a href="#"> Product </a>
		<div class="sub-menu-1">
		<ul>
			<li><a href="product/addform">Add Product</a></li>
			<li><a href="product/updatemainform">Update Product</a></li>
			<li><a href="product/findproductform">Find Product By Id</a></li>
			<li><a href="product/getallproducts">All Products List</a></li>
			<li><a href="product/deleteform">Delete Product</a></li>
			<li><a href="product/getproductinvoiceform">Get Product And Invoice</a></li>
		</ul>
		</div>
	</li>
	<li><a href="#">Customer</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="customer/addform">Add Customer</a></li>
		<li><a href="customer/updatemainform">Update Customer</a></li>
		<li><a href="customer/findcustomerform">Find Customer By Id</a></li>
		<li><a href="customer/getallcustomers">All Customers List</a></li>
		<li><a href="customer/getcustomerinvoiceform">Customer Invoices</a></li>
		<li><a href="customer/deleteform">Delete Customer</a></li>
	</ul>
	</div>
	</li>
	<li><a href="#">Invoice</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="invoice/addform">Add Invoice</a></li>
		<li><a href="invoice/updatemainform">Update Invoice</a></li>
		<li><a href="invoice/findinvoiceform">Get Invoice By Id</a></li>
		<li><a href="invoice/getallinvoices">Invoices List</a></li>
		<li><a href="invoice/form">Add Invoice And InvoiceDetails</a></li>
		<li><a href="invoice/getinvoiceanddetailsform">Find Invoice And InvoiceDetails</a></li>
		<li><a href="invoice/deleteform">Delete Invoice</a></li>
	</ul>
	</div>
	</li>
	<li><a href="#">Invoice Details</a>
	<div class="sub-menu-1">
	<ul>
		<li><a href="invoicedetails/addform">Add Invoice Details</a></li>
		<li><a href="invoicedetails/updatemainform">Update Invoice Details</a></li>
		<li><a href="invoicedetails/findinvoicedetailsform">Get Invoice Details By Id</a></li>
		<li><a href="invoicedetails/getallinvoicedetails">Get All Invoice Details</a></li>
		<li><a href="invoicedetails/deleteform">Delete Invoice Details</a></li>
	</ul>
	</div>
	</li>
	</ul>
	</div>
    </div>
</body>
</html>