<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Invoice Details</title>
<style><%@include file="/WEB-INF/css/deletecustomer.css"%></style>
</head>
<body>
	<form action="deleteinvoicedetails" >
	<h1>Delete Invoice Detail</h1>
                <div>
                  Invoice Number : <input type="text" name="id" placeholder="Enter invoice no"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
		    <button type="button" name="back" onclick="history.back()">back</button>
</body>
</html>