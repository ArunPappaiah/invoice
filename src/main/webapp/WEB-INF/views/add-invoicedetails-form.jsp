<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice Details</title>
<style><%@include file="/WEB-INF/css/addinvoicedetails.css"%></style>
<script> <%@include file="/WEB-INF/js/addinvoicedetailsform.js"%></script>
</head>
<body>
	<div id="registration-form" class="center" >
		<div id="form" class='fieldset'>
			<form:form action="addinvoicedetails" method="post"
				modelAttribute="addinvoicedetails" name="myForm">
				<h1>Adding Invoice Details Form</h1>
				<div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber" placeholder="Enter invoice no" required="true"/>
					</div>
				</div>
				<form:errors path="invoiceNumber" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" name="productId" onblur="productIdCheck();" placeholder="Enter product id" required="true"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" id="quantity" name="quantity" placeholder="Enter quantity" required="true" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="quantity" cssClass="text-danger" />
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" id="price" name="price" onblur="priceCheck();" placeholder="Enter price" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="price" cssClass="text-danger" />
				<div>
					<label for="gst">GST%</label>
					<div>
						<form:input path="gst" type="text" id="gst" name="gst" placeholder="Enter gst amount" required="true" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="gst" cssClass="text-danger" />
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="text" id="amount" name="amount" placeholder="Amount" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onChange="updatePrice(this.form)"/>
					</div>
				</div>
				<form:errors path="amount" cssClass="text-danger" />
		<div>
			<form:button>Add Invoice Details</form:button>
		</div>
		</form:form>
	</div>
	<button type="button" name="back" onclick="history.back()">back</button> 
	</div>
</body>
</html>