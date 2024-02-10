<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	
} 

header {
	background-color: #333;
	color: white;
	padding: 20px;
	text-align: center;
}

 form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 500px;
} 

label {
	display: block;
	margin-bottom: 8px;
}

input {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
}

button {
	background-color: #4caf50;
	color: #fff;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<form action="${pageContext.request.contextPath}/doctor/validate" method="post">
		<hr>
		<header>
			<h1>Welcome To Hospital</h1>
			Hospital Management Team
			<h3>Doctor Login Page</h3>
		</header>
		<hr>

    
		<label for="email">Email:</label> 
		<input type="email" id="email" name="email"required> 
		<label for="password">Password:</label> 
		<input type="password" id="password" name="password" required>
		

        <hr>

		<button type="submit">Login</button>
	</form>

</body>
</html>