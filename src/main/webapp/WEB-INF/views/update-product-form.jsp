<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
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
	<div id="root">
		<div id="form">
			<form:form action="updateproduct" method="post"
				modelAttribute="updateproduct">
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
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="gstRate">GST Rate</label>
					<div>
						<form:input path="gstRate"  type="text" readonly="readonly" id="out2x" name="" />
					</div>
				</div>
				<div>
					<label for="descriptions">Description</label>
					<div>
						<form:input path="descriptions" />
					</div>
				</div>
		<div>
			<form:button>Update Product</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>