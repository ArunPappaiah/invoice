<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Invoice</title>
<style><%@include file="/WEB-INF/css/updateinvoiceform.css"%></style>
<script> <%@include file="/WEB-INF/js/updateinvoiceform.js"%></script>
</head>
<body>
	<div id="registration-form" class="center">
		<div id="form" class='fieldset'>
			<form:form action="updateinvoice" method="post"
				modelAttribute="updateinvoice" name="myForm">
				<h1>Invoice Updating Form</h1>
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input type="text" path="invoiceNumber" placeholder="Enter invoice no" required="true"/>
					</div>
				</div>
				<form:errors path="invoiceNumber" cssClass="text-danger" />  
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" placeholder="Enter date" required="true"/>
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" name="customerId" onblur="customerIdCheck();" placeholder="Enter customer id" required="true"/>
					</div>
				</div>
				<form:errors path="customerId" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" name="productId" onblur="productIdCheck();" placeholder="Enter product id" required="true"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges" name="transportationCharges" onblur="transChargeCheck();" placeholder="Enter trasportation charge" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true"/>
					</div>
				</div>
				<form:errors path="transportationCharges" cssClass="text-danger" />
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" name="totalAmount" onblur="priceCheck();" placeholder="Total amount" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true"/>
					</div>
				</div>
				<form:errors path="totalAmount" cssClass="text-danger" />
		<div>
			<form:button>Update Invoice</form:button>
		</div>
		</form:form>
	</div>
	<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>