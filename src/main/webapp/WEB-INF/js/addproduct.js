/**
 * 
 */
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
		 if(document.myForm.price.value == ""){
				if(alert("Price can't be empty")){
					 document.myForm.price.focus();
				}
				else
					document.activeElement.blur();
			}
	   else{
	   	return false;
	   }
	} 