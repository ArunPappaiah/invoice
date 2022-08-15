<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
<style><%@include file="/WEB-INF/css/deletecustomer.css"%></style>
</head>
<body>
            <form action="deleteproduct" >
			<h1>Delete Product</h1>
                <div>
                  Product Id : <input type="text" name="product_id" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>