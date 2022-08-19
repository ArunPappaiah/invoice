<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Product Invoice</title>
<style><%@include file="/WEB-INF/css/findproductandinvoice.css"%></style>
</head>
<body>
	<div id="registration-form" class="center">
	 <form action="getproductandinvoice" class='fieldset'>
	 <h1>Find Product</h1>
                <div>
                  Product Id : <input type="text" id = "id" name="id" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form> <br>
		<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>