<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image:
		url("https://previews.123rf.com/images/mettus/mettus1303/mettus130303963/18629743-abstract-watercolor-background-paper-design-of-bright-color-splashes-modern-art.jpg");
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
			<form:form action="addcustomer" method="post"
				modelAttribute="addcustomer" >
				<h1>Add New Customer</h1>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" placeholder="Enter Id"/>
					</div>
				</div>
				<div>
					<label for="customerName" >Customer Name</label>
					<div>
						<form:input path="customerName" id="customerName" placeholder="Enter Name"/>
					</div>
				</div>
				<form:errors path="customerName" cssClass="text-danger" />
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" id="phoneNumber" placeholder="Enter mobile no"/>
					</div>
				</div>
				<form:errors path="phoneNumber" cssClass="text-danger" />
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" id="address" placeholder="Enter address"/>
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
			<form:button>Add Customer</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>