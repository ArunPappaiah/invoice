<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
<style> <%@include file="/WEB-INF/css/findcustomerform.css"%> </style>
</head>
<body>
<div id="registration-form" class="center">
   <form action="getcustomerbyid" class='fieldset'>
   <h1>Find Customer Form</h1>
	<div>
		Customer Id: <input type="text" id="customerId" name="id" placeholder="Enter customer id"/>
	</div>
	<br>
	<input type="submit" value="Find" />
	</form><br>
	<button type="button" name="back" onclick="history.back()">back</button> 
	</div>
</body>
</html>