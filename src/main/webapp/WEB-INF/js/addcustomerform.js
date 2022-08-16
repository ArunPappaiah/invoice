/**
 * 
 */
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
 var userNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.customerName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.customerName.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}

 var phoneNumberCheck = function() {
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.myForm.phoneNumber.value.match(phoneRg)){
			if(alert("Phone Number not valid")){
				 document.myForm.phoneNumber.focus();
			}
			else
				document.activeElement.blur();
		}
    else{
    	return false;
    }
} 
 
 var addressCheck = function() {
	 if(document.myForm.address.value == ""){
			if(alert("Address cannot be blank")){ 
				 document.myForm.address.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
 }

var emailNameCheck = function() {
	var rg = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
	if(!document.myForm.email.value.match(rg)){
		if(alert("Email not valid")){
			document.myForm.email.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}

var cityNameCheck = function() {
	var cityRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.city.value.match(cityRegex)){
		if(alert("City name can't be empty or must contain only alphabets")){
			 document.myForm.city.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}