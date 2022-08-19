<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style><%@include file="/WEB-INF/css/addproduct.css"%></style>
<script> <%@include file="/WEB-INF/js/addproduct.js"%></script>
</head>
<body>
	<div id="registration-form" class="center" >
		<div id="form" class='fieldset'>
			<form:form action="addproduct" method="post"
				modelAttribute="addproduct" id="myform" name="myForm">
				<h1>Add Product</h1>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" name="productId" onblur="productIdCheck();" placeholder="Enter product id" required="true"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger"/>
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" name="productName" onblur="productNameCheck();" placeholder="Enter product name" required="true"/>
					</div>
				</div>
				<form:errors path="productName" cssClass="text-danger" />
				<div>
					    <label for="categories">Select Category</label>
					    <br>
					    <select name="categories" onchange="calc(this.value);">
					    <option>--Please select category--</option>
					    <option value="clothes">Cloth</option>
					    <option value="books">Books</option>
						<option value="electronicitems">Electronics</option>
						<option value="food">Food</option>
						<option value="furnitures">Furniture</option>
						<option value="cosmetics">Cosmetics</option>
						</select>
				</div>
				<form:errors path="categories" cssClass="text-danger" />
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" name="price" onblur="priceCheck();" placeholder="Enter price" title="Price can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true"/>
					</div>
				</div>
				<form:errors path="price" cssClass="text-danger" />
				<div>
					<label for="gstRate">GST Rate%</label>
					<div>
						<form:input path="gstRate"  type="text" readonly="true" id="out2x" name="" placeholder="GST%" required="true"/>
					</div>
				</div>
				<form:errors path="gstRate" cssClass="text-danger" />
				<div>
					<label for="descriptions">Description</label>
					<div>
						<form:input path="descriptions" placeholder="Enter description" required="true"/>
					</div>
				</div>
				<form:errors path="descriptions" cssClass="text-danger" />
		<div>
			<form:button>Add Product</form:button>
		</div>
		</form:form>
	</div>
	<button type="button" name="back" onclick="history.back()">back</button>
	</div>
</body>
</html>