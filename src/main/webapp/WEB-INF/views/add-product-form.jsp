<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://png.pngtree.com/thumb_back/fw800/back_our/20190619/ourmid/pngtree-shopping-mall-supermarket-selection-merchandise-poster-background-material-image_133225.jpg");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
<script type="text/javascript">
	function calc(value){
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
	/* function mult(value){
		var x;
		x=2*value;
		document.getElementById('out2x').value=x;
		document.getElementById("out2x").readOnly = true; 
	} */
	
	function price(){
		var productId = document.getElementById("productId").value;
		var price;
		if(productId==50){
			price=3000;
		}else if(productId==51){
			price=5000;
		}else if(productId==52){
			price=7000;
		}else{
			price=0;
		}
		document.getElementById('price').value=price;
	}
	
</script>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="addproduct" method="post"
				modelAttribute="addproduct" id="myform">
				<h1>Add Product</h1>
				<div>
					<label for="productId">Product Id</label>
					<!-- <input type="text" name="" onkeyup="gst(this.category);"> -->
					<div>
						<form:input path="productId"  placeholder="Enter product id"/>
					</div>
				</div>
				<form:errors path="productId" cssClass="text-danger"/>
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" placeholder="Enter product name"/>
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
						<form:input path="price"  placeholder="Enter price" />
					</div>
				</div>
				<form:errors path="price" cssClass="text-danger" />
				<div>
					<label for="gstRate">GST Rate</label>
					<div>
						<form:input path="gstRate"  type="text" readonly="true" id="out2x" name="" placeholder="GST%"/>
					</div>
				</div>
				<form:errors path="gstRate" cssClass="text-danger" />
				<div>
					<label for="descriptions">Description</label>
					<div>
						<form:input path="descriptions" placeholder="Enter description"/>
					</div>
				</div>
				<form:errors path="descriptions" cssClass="text-danger" />
		<div>
			<form:button>Add Product</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>