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
</style>
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
   //out.println(sl3);
  /* rs.next();
   rs.getString("invoice_number");
   if(rs.getString("invoice_number")==null){
	   sl = "E-0000001";
   }else{
	   long id = Long.parseLong(rs.getString("invoice_number").substring(2,rs.getString("invoice_number").length()));
       id++;
       sl = "E-"+String.format("%07d",id);
   }
   String sl3 = String.valueOf(sl); */
 %>
 <%
 String s="";
 Invoice iv = new Invoice();
 	s = request.getParameter("invoice_number");
 	if(s==null|| s=="")
    {
        s="0";
    }
    int s2= Integer.parseInt(s);
    String s3= String.valueOf(s2+1); 
 %>
	<div id="root">
		<div id="form">
			<form:form action="addinvoice" method="post"
				modelAttribute="addinvoice">
				  <div>
					<label for="invoiceNumber">Invoice Number</label>
					<div>
						<form:input type="text" path="invoiceNumber" name="invoiceNumber" id="invoiceNumber" value="<%=sl3%>" readonly="true"/>
						<%-- <input type="text" name="invoice_number" id="invoice_number" value="<%=sl3%>"> --%>
					</div>
				</div>  
				<form:errors path="invoiceNumber" cssClass="text-danger" />
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
			<form:button>Add Invoice</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>