<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration</title>
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
<form action="${pageContext.request.contextPath}/reception/savepatient" method="post">
        <div><hr>
            <header>
                <h1>Welcome To Hospital</h1>
                Hospital Management Team
            </header>
            <h1>Patient Registration Form</h1>
            <hr></div>
        <!-- First Name -->
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required>
    <br>

    <!-- Middle Name -->
    <label for="middleName">Middle Name:</label>
    <input type="text" id="middleName" name="middleName" required>
    <br>

    <!-- Last Name -->
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required>
    <br>

    <!-- Birthdate -->
    <label for="birthdate">Birthdate:</label>
    <input type="date" id="birthdate" name="birthdate">
    <br>
    <label for="gender">
			Gender:</label> <select id="gender" name="gender" required>
			<option value="" disabled selected>Select your gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option><br/><br/>

    <!-- Address -->
    <label for="address">Address:</label>
    <textarea id="address" name="address" rows="4" cols="50"></textarea>
    <br>

    <!-- Email -->
    <label for="email">Email:</label>
    <input type="email" id="email" name="email">
    <br>

    <!-- Contact Number -->
    <label for="contactNumber">Contact Number:</label>
    <input type="tel" id="contactNumber" name="contactNumber" pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number">
    <br>

        <label for="bloodGroup">Blood Group:</label>
        <select id="bloodGroup" name="bloodGroup" >
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
        </select>

        

        <label for="comments">Additional Comments:</label>
        <textarea id="comments" name="comments" rows="4"></textarea>

        <button type="submit">Register</button>
    </form>


</body>
</html>