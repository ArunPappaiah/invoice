<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Invoice Details</title>
<style type="text/css">
body {
	background-image:
		url("https://www.teahub.io/photos/full/26-266134_abstract-backgrounds-design-light-desktop-images-hd-best.jpg");
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
	 <form action="updateform">
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