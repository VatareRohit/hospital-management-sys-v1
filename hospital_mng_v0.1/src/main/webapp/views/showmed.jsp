<%@page import="java.util.List"%>
<%@page import="com.springboot.web.bean.MedicineRecipt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Medicine</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 ;
            margin-right: 40px;
        }
        .hospitalname{
            height: 100px;
            max-width: 1500px;
            background-color:  #91cf93;
        }
        nav {
            background-color: #666;
            padding: 1em;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width:  80%;
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


        .form {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
            width: 1000px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, select {
            width: 80%;
            
            margin-bottom: 10px;
           
        }

        button {
            background-color: #4caf50;
            color: white;
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
<% String u1=(String )request.getAttribute("appoid");
         int appid= Integer.parseInt(u1);%>
<div class="hospitalname">
        <h2>Medicine </h2>

    </div>
    <nav style="color: white;"> Appointment ID: <%=appid %></nav>
<div>
<table>
<thead>
            <tr>
                <th>Medicine ID</th>  
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
   <td><%=md.getMedicineId()%></td>
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
</body>
</html>