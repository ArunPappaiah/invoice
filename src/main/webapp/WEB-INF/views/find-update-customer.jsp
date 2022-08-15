<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
<style><%@include file="/WEB-INF/css/findupdatecustomer.css"%></style>
</head>
<body>
	<div class="center">
	 <form action="updateform" >
	 	<h1>Find Customer Form</h1>
                <div>
                  Customer Id : <input type="text" id = "id" name="id" placeholder="Enter customer id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form>  
	</div> 
</body>
</html>