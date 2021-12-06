<%-- 
    Document   : patientreg
    Created on : Dec 6, 2021, 8:23:49 PM
    Author     : ALJEM
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration of patients</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Patient Registration</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
         <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">User Menu</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="login.jsp">Login</a>
                    
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="#!">Link</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
    
                    <!--
                    <p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
                    <p>
                        Make sure to keep all page content within the
                        <code>#page-content-wrapper</code>
                        . The top navbar is optional, and just for demonstration. Just create an element with the
                        <code>#sidebarToggle</code>
                        ID which will toggle the menu when clicked.
                    </p>
                    -->
                                    <h4>Patient Registration Page </h4>
                <form action="patientregistrationServlets" method="get">
            <table>
                <tr>
                    <td> Name:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Health Center</td>
                    <td><input type="text" name="healthcenter"></td>
                </tr>
                <tr>
                    <td>NIN:</td>
                    <td><input type="text" name="nin"></td>
                </tr>
                <tr>
                    <td>Date of vaccination:</td>
                    <td><input type="date" name="dateOfVaccination"></td>
                </tr>
                <tr>
                    <td>Vaccine:</td>
                    <td><input type="text" name="vaccine"></td>
                </tr>
                <tr>
                    <td>Batch No:</td>
                    <td><input type="text" name="batch"></td>
                </tr>
                <tr>
                    <td>Vaccine status</td>
                    <td><input type="text" name="vaccinestatus"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
            
            
        </form>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

                <%
                String nin = request.getParameter("nin");
                String name = request.getParameter("name");
                String dateOfvaccination = request.getParameter("dateOfVaccination");
                String vaccine = request.getParameter("vaccine");
                String batch = request.getParameter("batch");
                String vaccinestatus =request.getParameter("vaccinestatus");
                String healthcenter=request.getParameter("healthcenter");
                String table ="patients";
                

                %>
                <%@taglib uri="/WEB-INF/tlds/registerPatient" prefix="PatientRegistration" %>
                <%if(nin!=null&&dateOfvaccination!=null&&name!=null&&vaccinestatus!=null&&vaccine!=null&&batch!=null&&healthcenter!=null){%>
                <PatientRegistration:patientregistrationHandler  batch="${batch}" dateOfVaccination="${dateOfVaccination}" name="${name}" nin="${nin}" vaccine="${vaccine}" vaccinestatus='"${vaccinestatus}"' healthcenter='"${healthcenter}"'/>
                <%}%>
    </body>
</html>
