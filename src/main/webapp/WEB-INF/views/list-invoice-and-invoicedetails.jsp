<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Of Invoice And Invoice Details</title>
<style><%@include file="/WEB-INF/css/listinvoiceandinvoicedetails.css"%></style>
</head>
<body>
	 <div id="root" class="center">
		<div id="form">
			<form:form action="getinvoiceandinvoicedetails" method="post"
				modelAttribute="getinvoiceandinvoicedetails">
				<h1>Invoice And Invoice Details</h1>
				<div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input type="text" path="invoiceNumber"/>
					</div>
				</div>  
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" />
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges"/>
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" />
					</div>
				</div>
		</form:form>
	</div>
	</div> 
	<div id="root" class="center">
		<div id="form">
			<form:form action="getinvoiceandinvoicedetails" method="post"
				modelAttribute="invoicedetailslist">
				<div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber" />
					</div>
				</div>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" id="quantity" name="quantity" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" id="price" name="price" onchange="updatePrice()"/><!-- "calculateAmount(this.value)" -->
					</div>
				</div>
				<div>
					<label for="gst">GST</label>
					<div>
						<form:input path="gst" type="text" id="gst" name="gst" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="text" id="amount"  name="amount" onChange="updatePrice(this.form)"/>
					</div>
				</div>
		</form:form>
		 <br><br><button onclick="window.print()">Print page</button>
	</div><br>
	<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>