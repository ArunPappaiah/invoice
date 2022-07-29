<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="table root">
	<table>
	<thead>
		<tr>
		<th>Company Id</th>
		<th>Company Name</th>
		<th>Email Id</th>
		<th>GST Registration Number</th>
		<th>Company Address</th>
		<th>Contact Number</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="seller" items="${allsellers}">
			<tr>
			<td>${seller.company_id}</td>
			<td>${seller.company_name}</td>
			<td>${seller.email_Id}</td>
			<td>${seller.gst_registration_no}</td>
			<td>${seller.company_address}</td>
			<td>${seller.contact_number}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
</body>
</html>