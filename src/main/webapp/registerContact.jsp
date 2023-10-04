<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Contact</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

h1 {
	background-color: #333;
	color: #fff;
	padding: 20px;
	text-align: center;
	margin-top: 0;
	margin-bottom: 50px;
}

form {
	width: 80%;
	max-width: 400px;
	margin: 0 auto;
	padding: 30px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="email"], input[type="date"] {
	width: 95%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #555;
}

p.error {
	color: red;
}

button {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button:hover {
	background-color: #555;
}
</style>
</head>
<body>
	<h1>Add Contact</h1>

	<form action="RegisterServlet" method="post">
		<input type="text" id="name" name="name" placeholder="Name" required><br>
		
		<input type="text" id="cellphone" name="cellphone" placeholder="Cellphone" required><br> 
			
		<input type="text" id="telephone" name="telephone" placeholder="Telephone" required><br>
		
		<input type="email" id="email" name="email" placeholder="Email"required><br> 
			
		<input type="date" id="birthdate" name="birthdate" placeholder="Birthdate" required><br> 
		
		<input type="submit" value="Add contact">
		<button onclick="window.history.back()">Voltar</button>
	</form>
</body>
</html>
