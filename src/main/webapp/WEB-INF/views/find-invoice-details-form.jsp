<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice Details</title>
<style type="text/css">
body {
	background-image:
		url("https://media.istockphoto.com/photos/blurred-city-lights-background-with-green-bokeh-flares-picture-id482940392?b=1&k=20&m=482940392&s=170667a&w=0&h=TonKW-wVTb6WX7vFlg_tHGsZMoTQCCuvz92tuSyAzI0=");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div align="center">
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