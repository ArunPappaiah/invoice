<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/fontawesome.min.css">
<style type="text/css">
body {
	background-image:
		url("https://www.processmaker.com/wp-content/uploads/2021/03/20944159-scaled.jpg");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
.my_text {
	font-family: Times;
	font-size: 25px;
}
*{
	padding:0;
	margin:0;	
	box-sizing: border-box; 
}
.menu-bar{
	background: rgb(0, 0, 194); /* 0,100,0 */
	text-align:center;
}
.menu-bar ul{
	display: inline-flex;
	list-style:none;
	color:#EE2111;
}
.menu-bar ul li{
	width: 120px;
	margin: 15px;
	padding: 15px;
}
.menu-bar ul li a{
	text-decoration: none;
	color:#fff;
}
.active, .menu-bar ul li:hover{
	background: #ff6600;
	border-radius: 3px;
}
.menu-bar .fa{
	margin-right: 8px;
}
.sub-menu-1{
	display: none;
}
.menu-bar ul li:hover .sub-menu-1{
	display: block;
	position: absolute;
	background:rgb(0, 153, 204);/*rgb(255, 0, 0)*/
	margin-top: 15px;
	margin-left: -15px;
}
.menu-bar ul li:hover .sub-menu-1 ul{
	display: block;
	margin: 10px;
}
.menu-bar ul li:hover .sub-menu-1 ul li{
	width: 150px;
	padding: 10px;
	border-bottom: 1px dotted #fff;
	background: transparent;
	border-radius: 0;
	text-align: left;
}
.menu-bar ul li:hover .sub-menu-1 ul li:last-child{
	border-bottom:  none;
}
.menu-bar ul li:hover .sub-menu-1 ul li a:hover {
	color: #b2ff00;
}

</style>
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
	<!-- <h1>Welcome</h1>
	<h1>Product</h1>
		    <div>
				<a href="product/addform">Add Product</a>
			</div>
			<div>
				<a href="product/updatemainform">Update Product</a>
			</div>
			<div>
				<a href="product/findproductform">Find Product By Id</a>
			</div>
			<div>
				<a href="product/getallproducts">All Products List</a>
			</div>
			<div>
				<a href="product/deleteform">Delete Product</a>
			</div>
			<div>
				<a href="product/getproductinvoiceform">Get Product And Invoice</a>
			</div>
	<h1>Customer</h1>
			<div>
				<a href="customer/addform">Add Customer</a>
			</div>
			<div>
				<a href="customer/updatemainform">Update Customer</a>
			</div>
			<div>
				<a href="customer/findcustomerform">Find Customer By Id</a>
			</div>
			<div>
				<a href="customer/getallcustomers">All Customers List</a>
			</div>
			<div>
				<a href="customer/getcustomerinvoiceform">Customers Invoices</a>
			</div>
			<div>
				<a href="customer/deleteform">Delete Customer</a>
			</div>
	<h1>Invoice</h1>
			<div>
				<a href="invoice/addform">Add Invoice</a>
			</div>
			<div>
				<a href="invoice/updatemainform">Update Invoice</a>
			</div>
			<div>
				<a href="invoice/findinvoiceform">Get Invoice By Id</a>
			</div>
			<div>
				<a href="invoice/getallinvoices">Invoices List</a>
			</div>
			<div>
				<a href="invoice/form">Add Invoice And InvoiceDetails</a>
			</div>
			<div>
				<a href="invoice/getinvoiceanddetailsform">Find Invoice And InvoiceDetails</a>
			</div>
			<div>
				<a href="invoice/updateinvoiceanddetailsmainform">Update Invoice And InvoiceDetails</a>
			</div>
	<h1>Invoice Details</h1>
			<div>
				<a href="invoicedetails/addform">Add Invoice Details</a>
			</div>
			<div>
				<a href="invoicedetails/updatemainform">Update Invoice Details</a>
			</div>
			<div>
				<a href="invoicedetails/findinvoicedetailsform">Get Invoice Details By Id</a>
			</div>
			<div>
				<a href="invoicedetails/getallinvoicedetails">Get All Invoice Details</a>
			</div>
				<div>
				<a href="invoicedetails/deleteinvoicedetails">Delete Invoice Details</a>
			</div>   -->
			</div>
</body>
</html>