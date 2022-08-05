<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice Details</title>
</head>
<body>
	<form action="getinvoicedetailsbyid">
	<div>
		Invoice Number: <input type="text" id="invoiceNumber" name="id" />
	</div>
	<br>
	<input type="submit" value="Find" />
	</form>
</body>
</html>