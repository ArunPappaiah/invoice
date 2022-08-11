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
<title>Add Invoice And Details</title>
<style type="text/css">
	body {
	background-image:
		url("https://cdn.99images.com/photos/wallpapers/creative-graphics/pastel-blue%20android-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-mtx2z.png");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
<script type="text/javascript">
function updatePrice() {
	var qty = document.getElementById("quantity").value;
	var exPrice = document.getElementById("price").value;
	var gstPrice = document.getElementById("gst").value;
	
	var productId = document.getElementById("productId").value;
	var ivNo = document.getElementById("invoiceNumber").value;
	
	var transCharge = document.getElementById("transportationCharges").value;
	var totalAmount = document.getElementById("totalAmount").value;
	
	var amt = exPrice*qty;
	// var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
	var TPrice = (amt*gstPrice/100)+amt;
	var total = parseInt(TPrice)+parseInt(transCharge);
	
	document.getElementById("quantity").value = qty;
	document.getElementById("amount").value = TPrice;
	document.getElementById("totalAmount").value = total;
	
	document.getElementById("productId1").value = productId;
	document.getElementById("invoiceNumber1").value = ivNo;
	
	//----------------
	var productId = document.getElementById("productId").value;
	var price;
	if(productId==50){
		price=3000;
	}else if(productId==51){
		price=5000;
	}else if(productId==52){
		price=7000;
	}else{
		price=2000;
	}
	document.getElementById('price').value=price;
	
	//--------------------
	 if(productId==50){
		gstPrice=28;
	}else if(productId==51){
		gstPrice=28;
	}else if(productId==52){
		gstPrice=12;
	}else{
		gstPrice=18;
	}
	document.getElementById("gst").value = gstPrice;
} 


</script>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
 .heading{
            font-size: 20px;
            margin-bottom: 08px;
        }
  .sub-heading{
            color: #262626;
            margin-bottom: 05px;
    }
</style>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="transtest" method="get" modelAttribute="addinvoiceanddetails">
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber" id="invoiceNumber" required="true" onchange="updatePrice()"/>
					</div>
				</div> 
				<form:errors path="invoiceNumber" cssClass="text-danger" /> 
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" type="date" id="invoiceDate" required="true"/>
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" id="customerId" placeholder="Enter Id" required="true"/>
					</div>
				</div>
				<form:errors path="customerId" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" id="productId" name="productId" required="true" placeholder="Enter Id" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges" id="transportationCharges" name="transportationCharges" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="transportationCharges" cssClass="text-danger" />
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" id="totalAmount"  name="totalAmount" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onChange="updatePrice(this.form)"/>
					</div>
				</div>
				<form:errors path="totalAmount" cssClass="text-danger" />
				
				<div>
					<label for="invoiceNumber1">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber1" name="invoiceNumber" id="invoiceNumber1" required="true" onchange="updatePrice(this.form)"/>
					</div>
				</div>
				<form:errors path="invoiceNumber1" cssClass="text-danger" />
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" id="productId1" name="productId" required="true" onchange="updatePrice(this.form)"/>
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
						<form:input path="price" id="price" name="price" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onchange="updatePrice(this.form)"/><!-- "calculateAmount(this.value)" -->
					</div>
				</div>
				<form:errors path="price" cssClass="text-danger" />
				<div>
					<label for="gst">GST</label>
					<div>
						<form:input path="gst" type="text" id="gst" name="gst" required="true" onchange="updatePrice()"/>
					</div>
				</div>
				<form:errors path="gst" cssClass="text-danger" />
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="text" id="amount"  name="amount" title="Value can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true" onChange="updatePrice(this.form)"/>
					</div>
				</div>
				<form:errors path="amount" cssClass="text-danger" />
		<div>
			<form:button>Add Invoice</form:button>
		</div>
		<!-- <br>
            <input type="button" id="submit" value="Submit">
        <br> -->
		</form:form>
		 <!-- <table id="table" border=1>
            <tr>
            	<th>Invoice Number</th>
            	<th>Invoice Date</th>
            	<th>Customer Id</th>
                <th>Product Id</th>
                <th>Transportation Charge</th>
                <th>Total Amount</th>
                <th>Invoice Number</th>
                <th>Product Id</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>GST</th>
                <th>Amount</th>
            </tr>
        </table>
        <script type="text/javascript">
            
            document.getElementById("submit").onclick=function()
            {
                document.getElementById("table").style.display="block";
                
                var table = document.getElementById("table");
                var row = table.insertRow(-1);
                var ivNo = row.insertCell(0);
                var ivDate = row.insertCell(1);
                var custId = row.insertCell(2);
                var prodId = row.insertCell(3);
                var transCharge = row.insertCell(4);
                var totAmt = row.insertCell(5);
                var ivNo2 = row.insertCell(6);
                var prodId2 = row.insertCell(7);
                var qty = row.insertCell(8);
                var price = row.insertCell(9);
                var gst = row.insertCell(10);
                var amt = row.insertCell(11);
               
                ivNo.innerHTML = document.getElementById("invoiceNumber").value;
                ivDate.innerHTML = document.getElementById("invoiceDate").value;
                custId.innerHTML = document.getElementById("customerId").value;
                prodId.innerHTML = document.getElementById("productId").value;
                transCharge.innerHTML = document.getElementById("transportationCharges").value;
                totAmt.innerHTML = document.getElementById("totalAmount").value;
                ivNo2.innerHTML = document.getElementById("invoiceNumber1").value;
                prodId2.innerHTML = document.getElementById("productId1").value;
                qty.innerHTML = document.getElementById("quantity").value;
                price.innerHTML = document.getElementById("price").value;
                gst.innerHTML = document.getElementById("gst").value;
                amt.innerHTML = document.getElementById("amount").value;
                
                return false;
            }
        
        </script>
         -->
         <br><br><button onclick="window.print()">Print page</button>
	</div>
	</div>
	
</body>
</html>