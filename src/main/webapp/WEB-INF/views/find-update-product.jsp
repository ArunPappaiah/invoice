<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
<style type="text/css">
body {
	background-image:
		url("https://media.istockphoto.com/photos/graphs-and-charts-picture-id497664416?k=20&m=497664416&s=612x612&w=0&h=dYpQmnT3GmOvIhp47S8_ArY0Oxku5IF1jMd0IHsk_Yo=");
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
	 <form action="updateform" >
	 <h1>Find Product</h1>
                <div>
                  Product Id : <input type="text" id = "productId" name="productId" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form>  
	</div> 
</body>
</html>