<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product Invoice</title>
<style type="text/css">
body {
	background-image:
		url("https://cdn.99images.com/photos/wallpapers/creative-graphics/pastel-blue%20android-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-mtx2z.png");
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
	 <form action="getproductandinvoice" >
	 <h1>Find Product</h1>
                <div>
                  Product Id : <input type="text" id = "id" name="id" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form> 
	</div>
</body>
</html>