<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style><%@include file="/WEB-INF/css/addcustomer.css"%>
 .error {
                border:2px solid red;
            }
</style>
<script type="text/javascript">
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
</script>
</head>
<body>
	<div id="root" class="center">
		<div id="form">
			<form:form action="addcustomer" method="post"
				modelAttribute="addcustomer" name="myForm">
				<h1>Add New Customer</h1>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" name="customerId" onblur="customerIdCheck();" placeholder="Enter Id" required="true"/>
					</div>
				</div>
				<div>
					<label for="customerName" >Customer Name</label>
					<div>
						<form:input path="customerName" name="customerName" onblur="userNameCheck();" id="customerName" placeholder="Enter Name" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				 <form:errors path="customerName" cssClass="text-danger" /> 
				<div id="divAfterTextBox-id">
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" name="phoneNumber" onblur="phoneNumberCheck();" id="phoneNumber" placeholder="Enter mobile no"  pattern="[1-9]{1}[0-9]{9}"
title="Phone number should have atleast 10 digits"
required="true" />
					</div>
				</div>
				<form:errors path="phoneNumber" cssClass="text-danger" />
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" id="address" name="address" onblur="addressCheck();" placeholder="Enter address" required="true"/>
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="email">Email Id</label>
					<div>
						<form:input path="email" name="email" onblur="emailNameCheck();" placeholder="e.g example@gmail.com" pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
title="Enter valid email ex: example@gmail.com" required="true"/>
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" placeholder="Enter city" name = "city" onblur="cityNameCheck();" title=" City name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="city" cssClass="text-danger" />
		<div>
			<form:button>Add Customer</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>