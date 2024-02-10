
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@page import="com.springboot.web.bean.User"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>alluser</title>
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
    </style>
</head>
<body>
 <h2>User List</h2>
 <hr/>
 <div>
 <form action="${pageContext.request.contextPath}/admin/remove" method="post">
    <label for="userid">User Id:</label> 
		<input type="text" id="userid" name="userid"required> 
    <button type="submit">Delete User</button>
</form>
 

 </div>
  <table>
    <thead>
            <tr>
                <th>User ID</th>  
                <th>First Name</th>
                <th>Middle Name</th>
                 <th>Last Name</th>
                <th>Gender</th>
                <th>Join Date</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Birthdate</th>
                <th>Address</th>
                <th>Password</th>
                <th>Employee Type</th>
                <th>Doctor Specialty</th>  
            </tr>
        </thead>

    <%
       @SuppressWarnings("unchecked")
        List<User> userList = (List <User>) request.getAttribute("userList");
        if (userList != null && !userList.isEmpty()) {
            for (User user : userList) {
    %>
                <td> <%= user.getUserid() %></td>
                <td> <%= user.getFirstName() %></td>
                <td> <%= user.getMiddleName() %></td>
                <td><%= user.getLastName() %></td>
                <td> <%= user.getGender() %></td>
                <td> <%= user.getJoindate() %></td>
                <td> <%= user.getEmail() %></td>
                <td> <%= user.getContactNumber() %></td>
                <td> <%= user.getBirthdate() %></td>
                <td> <%= user.getAddress()%></td>
                <td> <%= user.getPassword() %></td>
                <td> <%= user.getEmptype() %></td>
                <td> <%= user.getDoctorSpecialty() %></td>
                <!-- Add more properties as needed --><tr>
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