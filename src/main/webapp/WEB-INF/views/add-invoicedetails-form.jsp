<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice Details</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://wallpaperaccess.com/full/1567846.jpg");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
<script type="text/javascript">
function calculateAmount(val)
{ 
	var price = val * 1;
	/*display the result*/
	var tot_price=price+(price*0.18);
	var divobj = document.getElementById('tot_amount');
	divobj.value = tot_price;
}
	
function updatePrice() {
    // Get the ex-GST price from its form element
var qty = document.getElementById("quantity").value;
var exPrice = document.getElementById("price").value;
var gstPrice = document.getElementById("gst").value;

//Get the GST price
// gstPrice =  Number(exPrice) + Number(gstPrice);
var amt = exPrice*qty;
var TPrice = (amt*gstPrice/100)+amt;

//var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
//Set the GST price in its form element
document.getElementById("quantity").value = qty;
document.getElementById("gst").value = gstPrice;
document.getElementById("amount").value = TPrice;

}

</script>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="addinvoicedetails" method="post"
				modelAttribute="addinvoicedetails">
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
						<form:input path="productId" placeholder="Enter product id" required="true"/>
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
						<form:input path="price" id="price" name="price" placeholder="Enter price" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onchange="updatePrice()"/><!-- "calculateAmount(this.value)" -->
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
						<form:input path="amount" type="text" id="amount"  name="amount" placeholder="Amount" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onChange="updatePrice(this.form)"/>
					</div>
				</div>
				<form:errors path="amount" cssClass="text-danger" />
		<div>
			<form:button>Add Invoice Details</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>