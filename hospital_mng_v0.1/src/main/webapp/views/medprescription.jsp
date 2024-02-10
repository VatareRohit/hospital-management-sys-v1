<%@page import="com.springboot.web.bean.MedicineRecipt"%>
<%@page import="java.util.List"%>
<%@page import="com.springboot.web.bean.Appointment"%>
<%@page import="com.springboot.web.bean.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>med prescription</title>
 <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        h1, h2, h3 {
            text-align: center;
            color: #333;
        }

        h2 {
            border-bottom: 2px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
           
           
        }

        th {
            background-color: #f2f2f2;
            width: 300px;
        }

        .medication {
            margin-bottom: 20px;
        }

        .medication h3 {
            color: #007bff;
        }

        .instructions {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Medical Prescription</h1>
        <div align="right">
     <button type="button" onclick="printPage()" >Print</button>
     </div>

        <div class="patient-info">
        <% Patient pa=(Patient)request.getAttribute("p1");
           Appointment appo=(Appointment)request.getAttribute("appo");
           %>
            <p><strong>Patient Name:</strong> <%=pa.getFirstName() %> <%=pa.getMiddleName() %> <%=pa.getLastName() %></p>
            <p><strong>ID:</strong><%=pa.getPatientid() %>/<%=appo.getAppointId() %>/<%=appo.getPreferredDate() %>:<%=appo.getPreferredTime() %></p>
            <p><small><%=appo.getDoctorName() %> (<%=appo.getDoctorSpecialty() %>) </small></p>
            <p><small>Appointment Type:<%=appo.getAppointmentType() %></small></p>
        </div>

        <div class="medication">
            <h2>Medications</h2>
            <table>
<thead>
            <tr>
                  
                <th>Medicine Name </th>
                <th>Dosage Size</th>
                 <th>Medicine Time</th>
                 <th>Instruction</th>
                 <th>QTY</th>
                 <th>Amount /per</th>
                <th>Total Amount</th>
                
            </tr>
        </thead>
   <%
   @SuppressWarnings("unchecked")
   List<MedicineRecipt> medlist=(List<MedicineRecipt>) request.getAttribute("medList");
   if(medlist !=null && !medlist.isEmpty()){
	   for(MedicineRecipt md : medlist){

   %>
   
   <td><%=md.getName() %></td>
   <td><%=md.getDosage() %></td>
   <td><%=md.getTime()%></td>
   <td><%=md.getNote() %></td>
   <td><%=md.getQty() %></td>
   <td><%=md.getPrice() %></td>
   <td><%=md.getTotPrice() %></td>

   
   <tr>
        <% 
            }
        } else {
        	%>
            <p>No medicine found.</p>
    <%
        }
    %> 

</table>
            

        
       

        </div>

        <div class="instructions">
            <h2>Instructions</h2>
            <p>Take the prescribed medications as directed. If you experience any adverse reactions or have concerns, contact your healthcare provider immediately.</p>
        </div>
    </div>
     <script>
        function printPage() {
            window.print();
        }
    </script> 
</body>
</html>