<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="getcustomerbyid" method="get"
				modelAttribute="getcustomer">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId"/>
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Email Id</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" readonly="true"/>
					</div>
				</div>
		</form:form>
	</div>
	</div>
</body>
</html>