<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Invoice And Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateinvoiceanddetails" method="get" modelAttribute="updateinvoiceanddetails">
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber"/>
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
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges" />
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" />
					</div>
				</div>
				
				<div>
					<label for="invoiceNumber1">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber1" />
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
						<form:input path="quantity"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price"/><!-- "calculateAmount(this.value)" -->
					</div>
				</div>
				<div>
					<label for="gst">GST</label>
					<div>
						<form:input path="gst"/>
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount"/><!-- id="tot_amount" -->
					</div>
				</div>
		<div>
			<form:button>Update Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>