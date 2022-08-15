<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Invoice</title>
<style><%@include file="/WEB-INF/css/deletecustomer.css"%></style>
</head>
<body>
	<form action="deleteinvoice" >
	<h1>Delete Invoice</h1>
                <div>
                  Invoice Number : <input type="text" name="id" placeholder="Enter invoice no"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>