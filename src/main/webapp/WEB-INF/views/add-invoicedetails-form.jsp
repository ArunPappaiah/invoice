<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice Details</title>
<script type="text/javascript">
function calculateAmount(val)
{ 
	var price = val * 1;
	/*display the result*/
	var tot_price=price+(price*0.18);
	var divobj = document.getElementById('tot_amount');
	divobj.value = tot_price;
}
/*-------------------------------------*/
/*function tcalc () {
	  // (A) ITEM PRICE + TAX PERCENTAGE
	  var price = document.getElementById("price").value,
	      percent = document.getElementById("gst").value;
	  price = parseFloat(price);
	  percent = parseFloat(percent);
	 
	  // (B) CALCULATE TAX AMOUNT
	  var tax = (price / 100) * percent,
	      grand = price * ((100 + percent) / 100);

	  // (C) ROUND OFF
	  // CREDITS - https://www.jacklmoore.com/notes/rounding-in-javascript/
	  var roundoff = function (amount, places) {
	    let ea = "e" + places,
	    eb = "e-" + places;
	    return Number(Math.round(amount + ea) + eb);
	  };
	 
	  // (D) SET CALCULATED VALUES TO HTML FIELDS
	  document.getElementById("taxamt").value = tax;
	  document.getElementById("taxgrand").value = grand;
	  return false;
}  */
</script>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addinvoicedetails" method="post"
				modelAttribute="addinvoicedetails">
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
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price"  onchange="calculateAmount(this.value)"/>
					</div>
				</div>
				<div>
					<label for="gst">GST</label>
					<div>
						<form:input path="gst" />
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="text" id="tot_amount"  name=""/>
					</div>
				</div>
		<div>
			<form:button>Add Invoice Details</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>