<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://img.freepik.com/free-vector/green-abstract-texture-background-with-watercolor_65186-2633.jpg?w=2000");
	 height: 768px;
	width: 1366px; 
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div id="root" align="center">
		<div id="form">
			<form:form action="updatecustomer" method="post"
				modelAttribute="updatecustomer">
				<h1>Update Customer Form</h1>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" placeholder="Enter Id" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" placeholder="Enter Name" />
					</div>
				</div>
				<form:errors path="customerName" cssClass="text-danger" />
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" placeholder="Enter mobile no"/>
					</div>
				</div>
				<form:errors path="phoneNumber" cssClass="text-danger" />
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" placeholder="Enter address"/>
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="email">Email Id</label>
					<div>
						<form:input path="email" placeholder="e.g example@gmail.com"/>
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" placeholder="Enter city"/>
					</div>
				</div>
				<form:errors path="city" cssClass="text-danger" />
		<div>
			<form:button>Update Customer</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>