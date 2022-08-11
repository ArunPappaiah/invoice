<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice And Details</title>
<style type="text/css">
body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqNmKYqE-wHWSjNbY2moXR9UJ97K6eMSrCw&usqp=CAU");
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
	 <form action="getinvoiceandinvoicedetails" >
	 <h1>Find Invoice And Details</h1>
                <div>
                  Invoice Number : <input type="text" id = "id" name="id" placeholder="Enter invoice no"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form> 
	</div>
</body>
</html>