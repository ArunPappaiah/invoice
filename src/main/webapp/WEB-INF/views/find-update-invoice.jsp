<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAeeoFB13gzPAaj6ziYpOOUgge4pA0HMgQmfD36-qYLU3wWV1vFfsKIqY1SKlZ8o_QXwA&usqp=CAU");
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
	<div align="center">
	 <form action="updateform">
	 <h1>Find Invoice</h1>
	<div>
		Invoice Number: <input type="text" id="invoiceNumber" name="id" placeholder="Enter invoice no"/>
	</div>
	<br>
	<input type="submit" value="Find" />
	</form> 
	</div>
</body>
</html>