<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer Invoices</title>
<style> <%@include file="/WEB-INF/css/findcustomerinvoices.css"%> </style>
</head>
<body>
	<div id="registration-form" class="center" >
	 <form action="getcustomerinvoices" class='fieldset'>
	 <h1>Find Customer Invoices</h1>
                <div>
                  Customer Id : <input type="text" id = "id" name="id" placeholder="Enter customer id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form><br> 
		<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>