/**
 * 
 */
function updatePrice() {
	var qty = document.getElementById("quantity").value;
	var exPrice = document.getElementById("price").value;
	var gstPrice = document.getElementById("gst").value;
	
	var productId = document.getElementById("productId").value;
	var ivNo = document.getElementById("invoiceNumber").value;
	
	var transCharge = document.getElementById("transportationCharges").value;
	var totalAmount = document.getElementById("totalAmount").value;
	
	var amt = exPrice*qty;
	// var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
	var TPrice = (amt*gstPrice/100)+amt;
	var total = parseInt(TPrice)+parseInt(transCharge);
	
	document.getElementById("quantity").value = qty;
	document.getElementById("amount").value = TPrice;
	document.getElementById("totalAmount").value = total;
	
	document.getElementById("productId1").value = productId;
	document.getElementById("invoiceNumber1").value = ivNo;
	
	//----------------
	var productId = document.getElementById("productId").value;
	var price;
	if(productId==50){
		price=3000;
	}else if(productId==51){
		price=20000;
	}else if(productId==52){
		price=500;
	}else if(productId==53){
		price=1000;
	}else{
		price=2000;
	}
	document.getElementById('price').value=price;
	
	//--------------------
	 if(productId==50){
		gstPrice=28;
	}else if(productId==51){
		gstPrice=28;
	}else if(productId==52){
		gstPrice=12;
	}else if(productId==53){
		gstPrice=5;
	}else{
		gstPrice=18;
	}
	document.getElementById("gst").value = gstPrice;
} 

var customerIdCheck = function() {
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

var transChargeCheck = function() {
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