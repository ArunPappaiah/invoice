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
<script type="text/javascript">
function updatePrice() {
	var qty = document.getElementById("quantity").value;
	var exPrice = document.getElementById("price").value;
	var gstPrice = document.getElementById("gst").value;
	var productId = document.getElementById("productId").value;
	
	var transCharge = document.getElementById("transportationCharges").value;
	var totalAmount = document.getElementById("totalAmount").value;
	
	var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
	var total = parseInt(TPrice)+parseInt(transCharge);
	
	document.getElementById("quantity").value = qty;
	document.getElementById("gst").value = gstPrice;
	document.getElementById("amount").value = TPrice;
	document.getElementById("totalAmount").value = total;
	document.getElementById("productId1").value = productId;
}
</script>
</head>
<body>
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
	<div id="root">
		<div id="form">
			<form:form action="transtest" method="get" modelAttribute="addinvoiceanddetails">
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber" name="invoiceNumber" id="invoiceNumber" value="<%=sl3%>" readonly="true"/>
					</div>
				</div>  
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" type="date"/>
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" id="productId" name="productId" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="transportationCharges">Transportation Charge</label>
					<div>
						<form:input path="transportationCharges" id="transportationCharges" name="transportationCharges" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" id="totalAmount"  name="totalAmount" onChange="updatePrice(this.form)"/>
					</div>
				</div>
				
				<div>
					<label for="invoiceNumber1">Invoice Number</label>
					<div>
						<form:input path="invoiceNumber1" name="invoiceNumber" id="invoiceNumber" value="<%=sl3%>" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" id="productId1" name="productId" onchange="updatePrice(this.form)"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" id="quantity" name="quantity" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" id="price" name="price" onchange="updatePrice()"/><!-- "calculateAmount(this.value)" -->
					</div>
				</div>
				<div>
					<label for="gst">GST</label>
					<div>
						<form:input path="gst" type="text" id="gst" name="gst" onchange="updatePrice()"/>
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" type="text" id="amount"  name="amount" onChange="updatePrice(this.form)"/>
					</div>
				</div>
		<div>
			<form:button>Add Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>