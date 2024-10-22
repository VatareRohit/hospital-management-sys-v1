<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital </title>
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
    @keyframes moveText {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(100%);
            }
        }

        /* Apply the animation to the moving-text element */
        .moving-text {
            white-space: nowrap; /* Prevent text from wrapping */
            overflow: hidden; /* Hide overflowing content */
            animation: moveText 5s linear infinite; /* Adjust the duration (5s) as needed */
        }

    /* Style for each box */
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
   
  </style>
</head>
<body>
  <header>
    <h1>Welcome To  Hospital </h1>
    <p>This is for  Hospital Management Team.</p>
  </header><hr>
  <div class="moving-text" id="movingText">
     Date and time will be added dynamically.
</div>

  <div  style="text-align-last: right;"  >
     <a href="${pageContext.request.contextPath}/admin/login"><button>Login</button></a>
</div>
  
    <!-- Box 1 -->
    <div class="box">
      <h1>Doctor</h1>
      <a href="${pageContext.request.contextPath}/doctor/login"><button>Login</button></a>
    </div>
    
    <!-- Box 2 -->
    <div class="box">
      <h1>Reception</h1> 
      <a href="${pageContext.request.contextPath}/reception/login"><button>Login</button></a>
    </div>
    
    <!-- Box 3 -->
    <div class="box">
      <h1>Pharmacists</h1>
      <small >work in progress</small><br></br>
      <button  type="submit">Login</button>
    
  </div>
  

<script>
    // Function to update the text with the current date and time
    function updateTextWithDateTime() {
        var movingTextElement = document.getElementById('movingText');
        var currentDate = new Date();
        var formattedDate = currentDate.toLocaleDateString();
        var formattedTime = currentDate.toLocaleTimeString();
        movingTextElement.innerHTML = `welcome to hospital. Date: ${formattedDate}, Time: ${formattedTime}`;
    }

    // Update the text initially and then every second
    updateTextWithDateTime();
    setInterval(updateTextWithDateTime, 1000);
</script>

</body>
</html>