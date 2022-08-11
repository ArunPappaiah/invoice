<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Invoice</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://alto.co/wp-content/uploads/2019/05/alto-invoice-background.png");
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
	<div id="root" align="center">
		<div id="form">
			<form:form action="updateinvoice" method="post"
				modelAttribute="updateinvoice">
				<h1>Invoice Updating Form</h1>
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input type="text" path="invoiceNumber"/>
					</div>
				</div>
				<form:errors path="invoiceNumber" cssClass="text-danger" />  
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
				<form:errors path="customerId" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges"/>
					</div>
				</div>
				<form:errors path="transportationCharges" cssClass="text-danger" />
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" />
					</div>
				</div>
				<form:errors path="totalAmount" cssClass="text-danger" />
		<div>
			<form:button>Update Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>