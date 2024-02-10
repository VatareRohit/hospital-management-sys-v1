<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Patient Registration Form</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 500px;
        }


        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<<body>

    <h1>Patient Registration Form</h1>

    <form action="process_registration.php" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>

        <label for="dateOfBirth">Date of Birth:</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth" required>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" min="1" required>

        <label>Gender:</label>
        <label for="male"><input type="radio" id="male" name="gender" value="male" required> Male</label>
        <label for="female"><input type="radio" id="female" name="gender" value="female" required> Female</label>
        <label for="other"><input type="radio" id="other" name="gender" value="other" required> Other</label>

        <label for="contactNumber">Contact Number:</label>
        <input type="tel" id="contactNumber" name="contactNumber" pattern="[0-9]{10}" required>
        <small>Enter a 10-digit phone number.</small>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea>

        <label for="bloodGroup">Blood Group:</label>
        <select id="bloodGroup" name="bloodGroup" required>
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