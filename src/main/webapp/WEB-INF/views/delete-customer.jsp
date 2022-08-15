<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer</title>
<style><%@include file="/WEB-INF/css/deletecustomer.css"%></style>
</head>
<body>
	 <form action="deletecustomer" >
	 <h1>Delete Customer</h1>
                <div>
                  Customer Id : <input type="text" name="id" placeholder="Enter customer id"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>