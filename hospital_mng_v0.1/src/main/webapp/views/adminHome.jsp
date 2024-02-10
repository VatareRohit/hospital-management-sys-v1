<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin home</title>
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
    <h1>Admin Page</h1>
  </header><hr>


<nav>
    <a href="#dashboard">Dashboard</a>
    <a href="#users">Users</a>
    <a href="#settings">Settings</a>
    <!-- Add more navigation links as needed -->
</nav>

<section id="dashboard">
    <h2>Dashboard</h2>
    <p>This is the admin dashboard.</p>
</section>
<hr>
<section id="users">
    <h2>Users</h2>
    <a href="${pageContext.request.contextPath}/admin/registershow"><button>create user</button></a>
    <a href="${pageContext.request.contextPath}/admin/showalluser"><button> all user</button></a>
     
<hr>
<section id="settings">
    <h2>Settings</h2>
    <p>Configure admin settings here.</p>
</section>
<hr>
  
 
</html>