<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style><%@include file="/WEB-INF/css/updateproductform.css"%></style>
<script type="text/javascript">
function mult(value){
	var x;
	if(value=="food"){
		x=18;	
		}else if(value=="clothes"){
			x=5;
		}else if(value=="books"){
			x=12;
		}else if(value=="electronicitems"){
			x=12;
		}else if(value=="furnitures"){
			x=28;
		}else if(value=="cosmetics"){
			x=28;
		}else{
			x=0;
		}
	document.getElementById('out2x').value=x;
}
</script>
</head>
<body>
	<div id="root" class="center">
		<div id="form">
			<form:form action="updateproduct" method="post"
				modelAttribute="updateproduct">
				<h1>Update Product Form</h1>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" placeholder="Enter product id" required="true"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger" />
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" placeholder="Enter product name" required="true"/>
					</div>
				</div>
				<form:errors path="productName" cssClass="text-danger" />
				<div>
					    <label for="categories">Select Category</label>
					    <br>
					    <select name="categories" onchange="mult(this.value);">
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
						<form:input path="price" placeholder="Enter price" title="Price can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true"/>
					</div>
				</div>
				<div>
					<label for="gstRate">GST Rate</label>
					<div>
						<form:input path="gstRate"  type="text" readonly="readonly" id="out2x" name="" placeholder="GST%" required="true"/>
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
			<form:button>Update Product</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>