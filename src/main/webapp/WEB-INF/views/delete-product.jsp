<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
<style type="text/css">
body {
	background-image:
		url("https://cdni.iconscout.com/illustration/free/thumb/deleted-4085808-3385477.png");
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
            <form action="deleteproduct" >
			<h1>Delete Product</h1>
                <div>
                  Product Id : <input type="text" name="productId" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>


</html>