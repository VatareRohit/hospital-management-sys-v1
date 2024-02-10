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

	<form action="${pageContext.request.contextPath}/admin/saveuser" method="post">
		<hr>
		<header>
			<h1>Welcome To Hospital</h1>
			Hospital Management Team
		</header>
		<hr>
		<label for="firstName">First Name</label> <input type="text" id="firstName" name="firstName" required>
        <label for="middleName">Middle Name</label> <input type="text" id="middleName" name="middleName" required>
        <label for="lastName">Last Name</label> <input type="text" id="lastName" name="lastName" required>
		
		<label for="gender">
			Gender:</label> <select id="gender" name="gender" required>
			<option value="" disabled selected>Select your gender</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select> <br/><br/>
		<label for="joindate"> Date of Joining:</label>
		<input type="date" id="joindate" name="joindate" format="dd/mm/yyyy" required>
		<label for="email">Email:</label> 
		<input type="email" id="email" name="email"required> 
		<label for="contactNumber">Contact Number:</label>
		<input type="tel" id="contactNumber" name="contactNumber"
			pattern="[0-9]{10}" placeholder="Enter 10-digit number" required>

		<label for="birthdate"> Date of Birth:</label> <input type="date"
			id="birthdate" name="birthdate" format="dd/mm/yyyy" required>

		<label for="address">Address:</label> <input type="text" id="address"
			name="address" required> <label for="password">Password:</label>
		<input type="password" id="password" name="password" required>
		

        <label for="emptype">Select Employee Type:</label>
        <select id="emptype" name="emptype">
            <option value="doctor"> Doctor</option>
            <option value="reception">Reception</option>
            <option value="pharmacist">Pharmacist </option>
        </select>

        <br/><br/>
        <div id="doctorSpecialtyContainer">
            <label for="doctorSpecialty"> Specialty:</label>
            <select id="doctorSpecialty" name="doctorSpecialty" required>
                <option value="none">--none--</option>
                <option value="familyPhysician">Family Physician</option>
                <option value="dermatologist">Dermatologist</option>
                <option value="pediatrician">Pediatrician</option>
                <option value="cardiologist">Cardiologist</option>
                <option value="gynecologist">Gynecologist</option>
                
            </select>
        </div><hr>
        

		<button type="submit">Register</button>
	</form>

</body>
</html>