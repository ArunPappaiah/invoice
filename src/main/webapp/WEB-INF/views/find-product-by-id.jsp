<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product By Id</title>
<style type="text/css">
	body {
	background-image:
		url("https://images.unsplash.com/photo-1495195129352-aeb325a55b65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFja2dyb3VuZCUyMGRlc2lnbnxlbnwwfHwwfHw%3D&w=1000&q=80");
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
	<div id="root" align="center">
		<div id="form">
			<form:form action="getproductbyid" method="get"
				modelAttribute="getproduct">
				<h1>Product Detail</h1>
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