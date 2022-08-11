<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
<style type="text/css">
	body {
	background-image:
		url("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvZHcxNC10aWdlci1uaW5nLTIxLWphcGFuZXNlLWJnLWpvYjYwOF8xLWt6ZXZjbngwLmpwZw.jpg?s=7XS_LGcz8BtjWHyOUUKT_7TP9lZNZMNnTfram4Qsd24");
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
	 <form action="getproductbyid" >
                <div>
                  Product Id : <input type="text" id = "productId" name="productId" placeholder="Enter product id"/>
                </div>
                <br>
                <input type="submit" value="Find" />
            </form>  
	</div>  
</body>
</html>