/**
 * 
 */
function calculateAmount(val)
{ 
	const price = val * 1;
	/*display the result*/
	const tot_price=price+(price*0.18);
	const divobj = document.getElementById('tot_amount');
	divobj.value = tot_price;
}
	
function updatePrice() {
    // Get the ex-GST price from its form element
const qty = document.getElementById("quantity").value;
const exPrice = document.getElementById("price").value;
const gstPrice = document.getElementById("gst").value;

//Get the GST price
// gstPrice =  Number(exPrice) + Number(gstPrice);
const amt = exPrice*qty;
const TPrice = (amt*gstPrice/100)+amt;

//var TPrice = parseInt(gstPrice) + parseInt(qty)*parseInt(exPrice);
//Set the GST price in its form element
document.getElementById("quantity").value = qty;
document.getElementById("gst").value = gstPrice;
document.getElementById("amount").value = TPrice;

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