<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet
,java.sql.Statement,com.chainsys.invoice.model.Invoice" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://d11wkw82a69pyn.cloudfront.net/siteassets/images/efinance/canvas_06-mobile-digital-pay_low.jpg");
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
			<form:form action="addinvoice" method="post"
				modelAttribute="addinvoice">
				<h1>Invoice Adding Form</h1>
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input type="text" path="invoiceNumber" placeholder="Enter invoice no"/>
					</div>
				</div>  
				<form:errors path="invoiceNumber" cssClass="text-danger" />
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" type="date"  placeholder="Enter date"/>
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId"  placeholder="Enter customer id"/>
					</div>
				</div>
				<form:errors path="customerId" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
                       <%--  <form:select path="productId">
                            <c:forEach var="product" items="${allproduct}">
                                <form:option value="${product.productId}"
                                    label="${product.productId}" />
                            </c:forEach>
                        </form:select> --%>
                        <form:input path="productId" />
                    </div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges"  placeholder="Enter trasportation charge"/>
					</div>
				</div>
				<form:errors path="transportationCharges" cssClass="text-danger" />
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount"  placeholder="Total amount"/>
					</div>
				</div>
				<form:errors path="totalAmount" cssClass="text-danger" />
		<div>
			<form:button>Add Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>