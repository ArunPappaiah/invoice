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
	
	var productIdCheck = function() {
		if(document.myForm.productId.value == ""){
			if(alert("Product Id cannot be blank")){
				document.myForm.productId.focus();
			}
			else
				document.activeElement.blur();
	    }
	    else{
	        return false;
	    } 
	}
	
	var productNameCheck = function() {
		if(document.myForm.productName.value == ""){
			if(alert("Product Name cannot be blank")){
				document.myForm.productName.focus();
			}
			else
				document.activeElement.blur();
	    }
	    else{
	        return false;
	    } 
	}
	
	var priceCheck = function() {
		 var priceRg = new RegExp("^\d{0,8}(\.\d{1,4})?$");
		 if(!document.myForm.price.value.match(priceRg)){
				if(alert("Price can't be empty or must contain numeric values")){
					 document.myForm.price.focus();
				}
				else
					document.activeElement.blur();
			}
	    else{
	    	return false;
	    }
	} 
	
</script>
</head>
<body>
	<div id="root" class="center" >
		<div id="form">
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
						<form:input path="price" name="price" placeholder="Enter price" title="Price can't be empty or must contain numeric values "
pattern="^\d+(,\d{1,2})?$" required="true"/>
					</div>
				</div>
				<form:errors path="price" cssClass="text-danger" />
				<div>
					<label for="gstRate">GST Rate</label>
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
	</div>
</body>
</html>