<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
<style type="text/css">
	body {
	background-image:
		url("https://images.unsplash.com/photo-1621416953228-87ad15716483?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJhY2tncm91bmQlMjBkZXNpZ258ZW58MHx8MHx8&w=1000&q=80");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
   <form action="getcustomerbyid" >
   <h1>Find Customer Form</h1>
	<div>
		Customer Id: <input type="text" id="customerId" name="id" placeholder="Enter customer id"/>
	</div>
	<br>
	<input type="submit" value="Find" />
	</form> 
</body>
</html>