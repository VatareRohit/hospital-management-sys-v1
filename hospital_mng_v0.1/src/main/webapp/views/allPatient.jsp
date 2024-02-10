<%@page import="java.util.List"%>
<%@page import="com.springboot.web.bean.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>all patient</title>
 <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
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
<body>
 <h2>Patient  List</h2>
 <hr/>
 <div style="background-color:gray; ">
 <form action="${pageContext.request.contextPath}/reception/removepatient" method="post">
    <label for="userid">Patient Id:</label> 
		<input type="text" id="userid" name="userid"required> 
    <button type="submit">Delete Patient </button><br/><hr/>
</form>
 

 </div>
  <table>
    <thead>
            <tr>
                <th>Patient ID</th>  
                <th>First Name</th>
                <th>Middle Name</th>
                 <th>Last Name</th>
                 <th>Birthdate</th>
                 <th>Gender</th>
                 <th>Address</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Blood Gr.</th>
                <th> Note</th>
                <th>Book Appointment</th>
                <th>Appointment History</th>
                
            </tr>
        </thead>

    <%
       @SuppressWarnings("unchecked")
        List<Patient> userList = (List <Patient>) request.getAttribute("userList");
        if (userList != null && !userList.isEmpty()) {
            for (Patient user : userList) {
    %>
                <td> <%= user.getPatientid() %></td>
                <td> <%= user.getFirstName() %></td>
                <td> <%= user.getMiddleName() %></td>
                <td><%= user.getLastName() %></td>
                <td> <%= user.getBirthdate() %></td>
                <td> <%=user.getGender() %></td>
                <td> <%= user.getAddress()%></td>
                <td> <%= user.getEmail() %></td>
                <td> <%= user.getContactNumber() %></td>
                <td> <%= user.getBloodType() %></td>
                <td> <%= user.getNotes() %></td>
                <td> <form action="${pageContext.request.contextPath}/reception/bookappo" method="post">
		                   <input type="hidden" id="paid" name="paid" value="<%= user.getPatientid() %>"> 
                           <button type="submit">Book </button>
                     </form></td>
                <td> <form action="${pageContext.request.contextPath}/reception/patientHistory" method="post">
		                   <input type="hidden" id="paid" name="paid" value="<%= user.getPatientid() %>"> 
                           <button type="submit">History </button>
                     </form></td>
                <tr>
               
            <% 
            }
        } else {
        	%>
            <p>No users found.</p>
    <%
        }
    %>     
 </table>
</body>
</html>