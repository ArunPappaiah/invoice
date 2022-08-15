<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet
,java.sql.Statement,com.chainsys.invoice.model.Invoice" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice</title>
<style><%@include file="/WEB-INF/css/addinvoice.css"%></style>
<script type="text/javascript">
var customerIdCheck = function() {
	if(document.myForm.customerId.value == ""){
		
		if(alert("Customer Id cannot be blank")){
			document.myForm.customerId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}

var productIdCheck = function() {
	if(document.myForm.productId.value == ""){
		
		if(alert("Product Id cannot be blank")){
			document.myForm.productId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}

var transChargeCheck = function() {
	 if(document.myForm.transportationCharges.value == ""){
			if(alert("Value can't be empty")){
				 document.myForm.transportationCharges.focus();
			}
			else
				document.activeElement.blur();
		}
  else{
  	return false;
  }
} 

var priceCheck = function() {
	 if(document.myForm.totalAmount.value == ""){
			if(alert("Value can't be empty")){
				 document.myForm.totalAmount.focus();
			}
			else
				document.activeElement.blur();
		}
   else{
   	return false;
   }
} 

</script>
</head>
<body>
	<div id="root" class="center">
		<div id="form">
			<form:form action="addinvoice" method="post"
				modelAttribute="addinvoice" name="myForm">
				<h1>Invoice Adding Form</h1>
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
						<form:input path="invoiceDate" type="date"  placeholder="Enter date" required="true"/>
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
                       <%--  <form:select path="productId">
                            <c:forEach var="product" items="${allproduct}">
                                <form:option value="${product.productId}"
                                    label="${product.productId}" />
                            </c:forEach>
                        </form:select> --%>
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
			<form:button>Add Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>