<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
</head>
<body>
   <form action="getcustomerbyid">
	<div>
		Customer Id: <input type="text" id="customerId" name="id" />
	</div>
	<br>
	<input type="submit" value="Find" />
	</form> 
</body>
</html>