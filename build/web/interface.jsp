<%-- 
    Document   : interface
    Created on : Dec 5, 2021, 12:31:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style> body {background-color: powderblue;
            width : 500px;
            padding : 50px;
            }
            h1 {color: red;}
            form {
                text-align: center;
                width : 500px;
            padding : 50px;
             border-radius: 12px;   
            }
            
        
                    </style>
    </head>
    <body>
        <h1>VACCINATION TRACKER</h1>


<!-- As a heading -->
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">vaccination tracker</span>
 
     <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">home page</a>
        </li>
        <li class="nav-item">
         Health Center Administration <a class="nav-link" href="#">Health Center Administration</a>
        </li>
        <li class="nav-item">
        Vaccine Inventory:  <a class="nav-link" href="/Moto/registration">Vaccine Registration</a>
        <a class="nav-link" href="/Moto/distribution">HealthCenter Distribution</a>
        <a class="nav-link" href="/Moto/display">Displaying vaccine registration table</a>
        </li>
        <li class="nav-item">
          Vaccine Administration<a class="nav-link " href="#" >Vaccine Administration</a>
        </li>
        <li class="nav-item">
         Vaccine Booking and Advisory <a class="nav-link" href="#">Vaccine Booking and Advisory</a>
        </li>
        <li class="nav-item">
         System Administration <a class="nav-link " href="#" >System Administration</a>
        </li>
      
      </ul>
    </div>
    
    
  
  </div>   
</nav>
    </body>
</html>
