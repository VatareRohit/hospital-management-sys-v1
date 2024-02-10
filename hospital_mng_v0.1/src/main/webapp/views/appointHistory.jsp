<%@page import="com.springboot.web.bean.Appointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppointmentHistory</title>
</head>
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
<body>
 <h2>Patient  List</h2>
 <hr/>
 <div style="background-color:gray; ">
 <form action="${pageContext.request.contextPath}/reception/removeappointment" method="post">
    <label for="userid">Appointment Id:</label> 
		<input type="text" id="userid" name="userid"required> 
    <button type="submit">Delete Appointment </button><br/><hr/>
</form>
</div>
<table>
<thead>
            <tr>
                <th>Appoint ID</th>  
                <th>Patient ID </th>
                <th>Appointment Type</th>
                 <th>Doctor Specialty</th>
                 <th>Doctor Name</th>
                 <th>Date</th>
                 <th>Time</th>
                <th>Madicines</th>
            </tr>
        </thead>
   <%
   @SuppressWarnings("unchecked")
   List<Appointment> appolist=(List<Appointment>) request.getAttribute("appoList");
   if(appolist !=null && !appolist.isEmpty()){
	   for(Appointment ap : appolist){

   %>
   <td><%=ap.getAppointId()%></td>
   <td><%=ap.getPatientid()%></td>
   <td><%=ap.getAppointmentType()%></td>
   <td><%=ap.getDoctorSpecialty()%></td>
   <td><%=ap.getDoctorName()%></td>
   <td><%=ap.getPreferredDate()%></td>
   <td><%=ap.getPreferredTime()%></td>
   <td><%=ap.getMadicines()%></td>
   
   <tr>
        <% 
            }
        } else {
        	%>
            <p>No history found.</p>
    <%
        }
    %> 

</table>




</body>
</html>