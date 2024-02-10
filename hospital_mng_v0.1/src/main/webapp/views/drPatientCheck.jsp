<%@page import="com.springboot.web.bean.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.springboot.web.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Checking</title>
<style type="text/css">
.mainbox{

            height: 150px;
            width:800px;
            background-color: #f0f0f0;
            border: 2px solid #333;
            border-radius: 10px;
            padding: 20px;
            margin: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
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
<div class="mainbox">
<h1> Welcome Hospital</h1>
<% User dr=(User)request.getAttribute("user");

%>
<h5>ID:<%=dr.getUserid() %> </h5>
 <div align="right">
  <h4>DR.<%=dr.getFirstName()%> <%=dr.getMiddleName()%> <%=dr.getLastName()%> (<%=dr.getDoctorSpecialty() %>) </h4>
   </div>   

</div>
<small><button onclick="sortTableByAppointId()" type="button">refresh</button></small>
<div>

<table id="appointmentTable"  class="table">
<thead>
            <tr>
                <th>Appoint ID</th>  
                <th>Patient ID </th>
                <th>Appointment Type</th>
                 <th>Doctor Specialty</th>
                 <th>Doctor Name</th>
                 <th>Date</th>
                 <th>Time</th>
                <th>add Medicines</th>
                <th>show Medicine</th>
                <th>remove Medicine</th>
               
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
   <td><% ap.setDoctorName(dr.getUserid()+" "+dr.getFirstName()+" "+dr.getLastName()); %>
   DR. <%=ap.getDoctorName()%></td>
   <td><%=ap.getPreferredDate()%></td>
   <td><%=ap.getPreferredTime()%></td>
   <td> <form action="${pageContext.request.contextPath}/doctor/addmed" method="post">
		                   <input type="hidden" id="appoid" name="appoid" value="<%=ap.getAppointId() %>"> 
		                   <input type="hidden" id="uid" name="uid" value="<%=dr.getUserid() %>">
                           <button type="submit">Add Medicine</button>
                     </form></td>
    <td> <form action="${pageContext.request.contextPath}/doctor/showmed" method="post">
		                   <input type="hidden" id="appoid" name="appoid" value="<%=ap.getAppointId() %>"> 
                           <button type="submit">show Medicine</button>
                     </form></td>
    <td> <form action="${pageContext.request.contextPath}/doctor/removemed" method="post">
		                   <input type="hidden" id="appoid" name="appoid" value="<%=ap.getAppointId() %>"> 
                           <button type="submit">Remove </button>
		                   </form></td>
   
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
</div>
<script>
    function sortTableByAppointId() {
    	var table, rows, switching, i, x, y, shouldSwitch;
        table = document.getElementById("appointmentTable");
        switching = true;

        while (switching) {
            switching = false;
            rows = table.rows;

            for (i = 1; i < (rows.length - 1); i++) {
                shouldSwitch = false;
                x = rows[i].getElementsByTagName("td")[0];
                y = rows[i + 1].getElementsByTagName("td")[0];

                if (parseInt(x.innerHTML) < parseInt(y.innerHTML)) {
                    shouldSwitch = true;
                    break;
                }
            }

            if (shouldSwitch) {
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
            }
        }
    }

    
</script>
</body>
</html>