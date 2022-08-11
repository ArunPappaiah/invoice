<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer</title>
<style type="text/css">
	body {
	background-image:
		url("https://static.vecteezy.com/system/resources/previews/001/884/518/large_2x/green-watercolor-abstract-background-texture-illustration-texture-for-design-free-photo.jpg");
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
	<div align="center">
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