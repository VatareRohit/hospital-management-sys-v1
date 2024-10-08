<%@page import="com.springboot.web.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Home </title>
<style>
    /* Style for the header box */
    header {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 20px;
    }
    /* Style for the container */
    .container {
      display: flex;
      justify-content: space-between;
    }
  
        
    .box {
        width: 300px;
            height: 150px;
            background-color: #f0f0f0;
            border: 2px solid #333;
            border-radius: 10px;
            padding: 20px;
            margin: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
       /* Include padding in the total width/height */
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
        small{
            color: red;
        }
        nav {
            background-color: #666;
            padding: 1em;
            text-align: center;
        }

        nav a {
            text-decoration: none;
            color: white;
            padding: 1em;
            margin: 0 1em;
        }

        section {
            padding: 1em;
        }
   
  </style>
</head>
<body>
 <header>
    <h1>Welcome To  Hospital </h1><br/>
    <h1>Doctor Page</h1>
  </header><hr>


<nav>
    <a href="#dashboard">Dashboard</a>
    <a href="#users">Patient</a>
    <a href="#settings">Settings</a>
</nav>
<div>
<%
User dr=(User)request.getAttribute("u1");
%>


</div>
    <!-- Add more navigation links as needed -->
    <section id="dashboard">
    <h2>Doctor</h2>
    <div align="right">
    <a href="${pageContext.request.contextPath}/"><button>All Doctor</button></a>
    <p>Email ID: <%=dr.getEmail() %></p>
    <label ><%=dr.getUserid() %></label>
    </div>
    
    <% int a =dr.getUserid();%>
    
    <p>Hi Dr. <%=dr.getFirstName() %> <%=dr.getMiddleName() %> <%=dr.getLastName() %></p>
    <p>(<%=dr.getDoctorSpecialty() %>)</p>
    
    
</section>
<hr>
<section id="users">
    <h2>Patient</h2>
    <form action="${pageContext.request.contextPath}/doctor/allpatient/<%=a %>" method="get">
    <button type="submit">ALL Patient</button>
     
    </form>
   
    <br/><br/>
    <a href="${pageContext.request.contextPath}/reception/historyappo"><button>Appointment History</button></a>
    <br/><br/>
     
<hr>
<section id="settings">
    <h2>Settings</h2>
    <p>Configure  settings here.</p>
</section>
<hr>


</body>
</html>