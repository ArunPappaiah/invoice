/**
 * 
 */
const customerIdCheck = function() {
	if(document.myForm.customerId.value == ""){
		
		if(alert("Customer Id cannot be blank")){
			document.myForm.customerId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}

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

const transChargeCheck = function() {
	 if(document.myForm.transportationCharges.value == ""){
			if(alert("Value can't be empty")){
				 document.myForm.transportationCharges.focus();
			}
			else
				document.activeElement.blur();
		}
  else{
  	return false;
  }
} 

const priceCheck = function() {
	 if(document.myForm.totalAmount.value == ""){
			if(alert("Value can't be empty")){
				 document.myForm.totalAmount.focus();
			}
			else
				document.activeElement.blur();
		}
   else{
   	return false;
   }
} 