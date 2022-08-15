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
<title>Add Invoice And Details</title>
<style> <%@include file="/WEB-INF/css/addinvoiceandinvoicedetails.css"%> </style>
<% 
    Connection conn = null;
    PreparedStatement pst=null;
    ResultSet rs;
    Statement st=null;
     
   Class.forName("oracle.jdbc.OracleDriver");
   conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
      "system","Arunps2244#");
   String sl="";
   
   pst=conn.prepareStatement("select invoice_number from invoice");
   rs=pst.executeQuery();
   while(rs.next())
   {
       sl=rs.getString("invoice_number");
   }
   if(sl==null|| sl=="")
   {
       sl="0";
   }
   int sl2= Integer.parseInt(sl);
   String sl3= String.valueOf(sl2+1);        
 %>
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
</script>

</head>
<body>
	<div id="root" class="center" >
		<div id="form">
			<form:form action="transtest" method="get" modelAttribute="addinvoiceanddetails" name="myForm">
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber" id="invoiceNumber" required="true" value="<%=sl3%>" onchange="updatePrice()"/>
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
						<form:input path="customerId" id="customerId" name="customerId" onblur="customerIdCheck();" placeholder="Enter Id" required="true"/>
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
						<form:input path="transportationCharges" id="transportationCharges" name="transportationCharges" onblur="transChargeCheck();" title="Value can't be empty or must contain numeric values "
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
		</form:form>
         <br><br><button onclick="window.print()">Print page</button>
	</div>
	</div>
</body>
</html>