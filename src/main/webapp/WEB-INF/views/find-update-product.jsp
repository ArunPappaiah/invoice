<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
<style><%@include file="/WEB-INF/css/findupdateproduct.css"%></style>
</head>
<body>
	<div id="registration-form" class="center">
	 <form action="updateform" class='fieldset'>
	 <h1>Find Product</h1>
                <div>
                  Product Id : <input type="text" id = "productId" name="productId" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form>  
		<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>