<%@page import="com.springboot.web.bean.Patient"%>
<%@page import="com.springboot.web.bean.Appointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Profile</title>
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
              .div1 {

            background-color: rgb(194, 248, 226);
            padding: 40px;
            padding-left: 10px;
            border-radius: 10px;
            border-width: 20px;
            border-color: rgb(46, 186, 130);

            width: 800px;
            display: block;
            margin-bottom: 10px;
            margin-left: 10px;
            margin-right: 10px;
            font-family: Arial, sans-serif;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <div class="div1">
    <%
    Patient p1= (Patient)request.getAttribute("pa");
    %>
    <div align="right">
     <button type="button" onclick="printPage()" >Print</button>
     </div>
     <h5> Patient ID:<%=p1.getPatientid() %></h5> 
   
        <h4> Patient Name: <%=p1.getFirstName()  %>  <%=p1.getMiddleName() %>  <%=p1.getLastName() %></h4>
    
        <h4> Birth Date: <%=p1.getBirthdate() %></h4>
        
        <h4> Blood Group: <%= p1.getBloodType()%></h4>
     
        <h4> Gender:<%=p1.getGender()%></h4>
        
        <h4> Email: <%=p1.getEmail() %></h4>
       
        <h4> contactNumber: <%=p1.getContactNumber() %></h4>
        <br>
        <label> Mark:</label><h4><%=p1.getNotes()%></h4>
        <br>

    </div>
<div>
  <table>
    <thead>
            <tr>
                <th>Appointment ID</th>  
                <th>Type</th>
                <th>Doctor Name</th>
                 <th>Specialty</th>
                 <th>Date</th>
                 <th>Time</th>
                <th>Medicine</th>
                <th>status</th>
                
            </tr>
        </thead>
        <%
        @SuppressWarnings("unchecked")
        List<Appointment> apList=(List<Appointment>)request.getAttribute("appList");
        if(apList !=null && !apList.isEmpty()){
        	for( Appointment appoint:apList){

        %>
        <td><%= appoint.getAppointId() %></td>
        <td><%=appoint.getAppointmentType()%></td>
        <td><%=appoint.getDoctorName() %></td>
         <td><%=appoint.getDoctorSpecialty() %></td>
          <td><%=appoint.getPreferredDate() %></td>
           <td><%=appoint.getPreferredTime() %></td>
           <td> <form action="${pageContext.request.contextPath}/reception/showpre" method="get">
		                   <input type="hidden" id="paid" name="paid" value="<%= p1.getPatientid() %>"> 
		                   <input type="hidden" id="appoid" name="appoid" value="<%=appoint.getAppointId() %>"> 
                           <button type="submit"> Show Prescription </button>
                     </form></td>
            <td> <input type="checkbox" id="myCheckbox" name="featureEnabled"></td>
        <tr>
      <%
      }
      }
      else{
      %>  
      <p>No Any History</p>
      <%
      }
      %>
      </table>
      
      <div align="right">
        <h3>_ _ _ Hospital</h3> 
        <small>stamp</small>
      </div>
  </div>      
        
        
  <script>
        function printPage() {
            window.print();
        }
       
        $(document).ready(function() {
            $('#appointmentTable').DataTable();
        });
   
    </script>      
        
        
        
        

</body>
</html>