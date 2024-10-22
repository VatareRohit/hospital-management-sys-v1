<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 15px;
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

        input,
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            padding: 10px;
            background-color: #ace3ad;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>
 
    <header>
        <h1>Hospital Appointment Booking</h1>
        <p> Hospital Management Team.</p>
    </header>
    <hr>
    <% 
    String paid= (String)request.getAttribute("patientId") ;
    int patientId =Integer.parseInt(paid);
    %>
    <form action="${pageContext.request.contextPath}/reception/saveappo" method="post">
        
        <label for="patientId">Patient Id:</label>
        <input type="number" id="patientId" name="patientId" value="<%=patientId %>" readonly>

        <label for="appointmentType">Appointment Type:</label>
        <select id="appointmentType" name="appointmentType" required onchange="toggleDoctorSpecialty()">
            <option value="generalCheckup">General Checkup</option>
            <option value="followUp">Follow-up Appointment</option>
            <option value="bloodTest">Blood Test</option>
            <option value="xRay">X-Ray Appointment</option>
            <option value="vaccination">Vaccination</option>
            <option value="surgery">Surgery Consultation</option>
            <option value="doctor">Other Doctor Appointment</option>
            <option value="receptionist">Receptionist Assistance</option>
            <option value="pharmacist">Pharmacist Consultation</option>
        </select>

        <div id="doctorSpecialtyContainer">
            <label for="doctorSpecialty">Doctor Specialty:</label>
            <select id="doctorSpecialty" name="doctorSpecialty" required>
                <option value="familyPhysician">Family Physician</option>
                <option value="dermatologist">Dermatologist</option>
                <option value="pediatrician">Pediatrician</option>
                <option value="cardiologist">Cardiologist</option>
                <option value="gynecologist">Gynecologist</option>
            </select>
        </div>

        <label for="preferredDate">Preferred Date:</label>
        <input type="date" id="preferredDate" name="preferredDate" required>

        <label for="preferredTime">Preferred Time:</label>
        <input type="time" id="preferredTime" name="preferredTime" required>

        <button type="submit">Book Appointment</button>
    </form>
</body>
</html>