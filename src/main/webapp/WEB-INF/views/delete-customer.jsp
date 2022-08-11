<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Customer</title>
<style type="text/css">
body {
	background-image:
		url("https://cdni.iconscout.com/illustration/free/thumb/deleted-4085808-3385477.png");
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
	 <form action="deletecustomer" >
	 <h1>Delete Customer</h1>
                <div>
                  Customer Id : <input type="text" name="id" placeholder="Enter customer id"/>
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>