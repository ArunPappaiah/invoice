<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
<style><%@include file="/WEB-INF/css/findproduct.css"%></style>
</head>
<body>
	<div id="registration-form" class="center">
	 <form action="getproductbyid" class='fieldset'>
                <div>
                  Product Id : <input type="text" id = "productId" name="productId" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form><br> 
	<button type="button" name="back" onclick="history.back()">back</button>
	</div>  
</body>
</html>