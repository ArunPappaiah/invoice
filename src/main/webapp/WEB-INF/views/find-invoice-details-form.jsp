<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice Details</title>
<style><%@include file="/WEB-INF/css/findinvoicedetailsform.css"%></style>
</head>
<body>
	<div class="center">
	<form action="getinvoicedetailsbyid">
	<h1>Find Invoice Detail</h1>
	<div>
		Invoice Number: <input type="text" id="invoiceNumber" name="id" placeholder="Enter invoice no"/>
	</div>
	<br>
	<input type="submit" value="Find" />
	</form>
	</div>
</body>
</html>