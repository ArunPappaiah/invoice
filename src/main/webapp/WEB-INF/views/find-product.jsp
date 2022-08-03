<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
</head>
<body>
	 <form action="getproductbyid" >
                <div>
                  Product Id : <input type="text" id = "productId" name="productId" />
                </div>
                <br>
                <input type="submit" value="Find" />
            </form>    
</body>
</html>