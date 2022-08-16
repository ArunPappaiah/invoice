/**
 * 
 */
const productIdCheck = function() {
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
const priceCheck = function() {
	 if(document.myForm.price.value == ""){
			if(alert("Value can't be empty")){
				 document.myForm.price.focus();
			}
			else
				document.activeElement.blur();
		}
  else{
  	return false;
  }
} 