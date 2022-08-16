/**
 * 
 */
function calculateAmount(val)
{ 
	var price = val * 1;
	/*display the result*/
	var tot_price=price+(price*0.18);
	var divobj = document.getElementById('tot_amount');
	divobj.value = tot_price;
}
	
function updatePrice() {
    // Get the ex-GST price from its form element
var qty = document.getElementById("quantity").value;
var exPrice = document.getElementById("price").value;
var gstPrice = document.getElementById("gst").value;

//Get the GST price
// gstPrice =  Number(exPrice) + Number(gstPrice);
var amt = exPrice*qty;
var TPrice = (amt*gstPrice/100)+amt;

//var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
//Set the GST price in its form element
document.getElementById("quantity").value = qty;
document.getElementById("gst").value = gstPrice;
document.getElementById("amount").value = TPrice;

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
var priceCheck = function() {
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