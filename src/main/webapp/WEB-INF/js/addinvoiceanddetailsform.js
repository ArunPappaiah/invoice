/**
 * 
 */
function updatePrice() {
	let qty = document.getElementById("quantity").value;
	let exPrice = document.getElementById("price").value;
	let gstPrice = document.getElementById("gst").value;
	
	let productId = document.getElementById("productId").value;
	let ivNo = document.getElementById("invoiceNumber").value;
	
	let transCharge = document.getElementById("transportationCharges").value;
	// let totalAmount = document.getElementById("totalAmount").value;
	
	let amt = exPrice*qty;
	// var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
	let TPrice = (amt*gstPrice/100)+amt;
	let total = parseInt(TPrice)+parseInt(transCharge);
	
	document.getElementById("quantity").value = qty;
	document.getElementById("amount").value = TPrice;
	document.getElementById("totalAmount").value = total;
	
	document.getElementById("productId1").value = productId;
	document.getElementById("invoiceNumber1").value = ivNo;
	
	//----------------
	// let productId = document.getElementById("productId").value;
	let price;
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