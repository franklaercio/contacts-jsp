<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Details</title>
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
    margin: 0;
}

.container {
    width: 80%;
    max-width: 600px;
    margin: 0 auto;
    padding: 30px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    margin-top: 20px;
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

p {
    margin-bottom: 10px;
}

.error {
    color: red;
}

button {
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    margin-top: 20px;
}

button:hover {
    background-color: #555;
}
</style>
</head>
<body>
    <h1>View Details</h1>
    
    <div class="container">
        <p><strong>Nome:</strong> <%=request.getParameter("name") %></p>
        <p><strong>Cellphone:</strong> <%=request.getParameter("cellphone") %></p>
        <p><strong>Telephone:</strong> <%=request.getParameter("telephone") %></p>
        <p><strong>Email:</strong> <%=request.getParameter("email") %></p>
        <p><strong>Birthdate:</strong> <%=request.getParameter("birthdate") %></p>
        <button onclick="window.history.back()">Voltar</button>
    </div>
</body>
</html>
