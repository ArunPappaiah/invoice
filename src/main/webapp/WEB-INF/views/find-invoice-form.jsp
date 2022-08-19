<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice</title>
<style><%@include file="/WEB-INF/css/findinvoiceform.css"%></style>
</head>
<body>
	<div id="registration-form" class="center">
	<form action="getinvoicebyid" class='fieldset'>
	<h1>Find Invoice</h1>
	<div>
		Invoice Number: <input type="text" id="invoiceNumber" name="id" placeholder="Enter invoice no"/>
	</div>
	<br>
	<input type="submit" value="Find" />
	</form><br>
	<button type="button" name="back" onclick="history.back()">back</button> 
	</div>
</body>
</html>