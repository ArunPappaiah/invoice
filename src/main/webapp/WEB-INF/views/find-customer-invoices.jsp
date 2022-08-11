<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer Invoices</title>
<style type="text/css">
	body {
	background-image:
		url("https://www.pixelstalk.net/wp-content/uploads/images6/Pastel-Blue-Wallpaper-Aesthetic-HD-324x235.jpg");
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
	 <form action="getcustomerinvoices" >
	 <h1>Find Customer Invoices</h1>
                <div>
                  Customer Id : <input type="text" id = "id" name="id" placeholder="Enter customer id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form> 
	</div>
</body>
</html>