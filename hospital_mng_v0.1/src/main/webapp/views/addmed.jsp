<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="ISO-8859-1">
<title>AddMedicine</title>
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
<body><% String u1=(String )request.getAttribute("appoid");
         int appid= Integer.parseInt(u1);%>
<div class="hospitalname">
        <h2>Add Medicine </h2>

    </div>
    <nav style="color: white;"> Appointment ID: <%=appid %></nav>
    

    <div class="container">
             <form action="${pageContext.request.contextPath}/doctor/medicinesave" method="post" >
             <input type="hidden" id="appoid" name="appoid" value="<%=appid%>"> 
                <table id="medicineTable">
                    <tr>
                        <th>Medicine Name</th>
                        <th>dosage (mg)</th>
                        
                        <th>Frequency</th>
                        <th>Qty </th>
                        <th>Instructions</th>
                        <th> </th>
                    </tr>
                   
                <tr>
                <td><input type="text" id="name"   name="name" required></td>
                <td><input type="number" id="dosage" name="dosage" required></td>
              
                <td>
                <select id="time" name="time" required>
                    <option value="once_daily">Once Daily</option>
                    <option value="twice_daily">Twice Daily</option>
                    <option value="thrice_daily">Thrice Daily</option>
                </select></td>
                <td> <input type="number" id="qty" name="qty" required></td>
                <td><textarea id="note" name="note" rows="2" required></textarea></td>
                <td>
            <button type="button" onclick="addRow()">+</button></td>
           <td> <button type="button" onclick="removeRow(this)">-</button></td>
            </tr>
           
            </table>
            <hr>
            <button type="submit">Done</button> </form>
        </div>
        <script>
    function addRow() {
        var table = document.getElementById("medicineTable");
        var newRow = table.rows[1].cloneNode(true);

        var inputs = newRow.getElementsByTagName("input");
        for (var i = 0; i < inputs.length; i++) {
            inputs[i].value = "";
        }

        var textarea = newRow.getElementsByTagName("textarea")[0];
        textarea.value = "";

        var removeButton = document.createElement("button");
        removeButton.type = "button";
        removeButton.textContent = "-";
        removeButton.onclick = function() {
            removeRow(this);
        };

        newRow.cells[newRow.cells.length - 1].innerHTML = "";
        newRow.cells[newRow.cells.length - 1].appendChild(removeButton);

        table.appendChild(newRow);
    }

    function removeRow(button) {
        var row = button.parentNode.parentNode;
        var table = row.parentNode;
        table.removeChild(row);
    }
</script>



</body>
</html>