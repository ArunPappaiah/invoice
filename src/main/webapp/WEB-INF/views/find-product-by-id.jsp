<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="getproductbyid" method="get"
				modelAttribute="getproduct">
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" />
					</div>
				</div>
				<div>
					<label for="categories">Category</label>
					<div>
						<form:input path="categories" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="gstRate">GST Rate</label>
					<div>
						<form:input path="gstRate"  type="text" readonly="readonly"/>
					</div>
				</div>
				<div>
					<label for="descriptions">Description</label>
					<div>
						<form:input path="descriptions" />
					</div>
				</div>
		</form:form>
	</div>
	</div>
</body>
</html>