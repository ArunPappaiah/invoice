<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<%-- <body>
		<div id="root">
		<div id="form">
			<form:form action="deleteproduct" method="post">
				<div>
					<label for="product_id">Product Id</label>
					<div>
						<form:input path="product_id" />
					</div>
				</div>
				<div>
			<form:button>Delete Product</form:button>
		</div>
				</form:form>
	</div>
	</div> --%>
<!-- </body> -->
<body>
            <form action="deleteproduct" >
                <div>
                  Product Id : <input type="text" name="productId" />
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>


</html>