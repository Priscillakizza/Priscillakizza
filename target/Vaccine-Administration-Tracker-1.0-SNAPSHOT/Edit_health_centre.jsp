<%-- 
    Document   : Edit_health_centre
    Created on : Dec 5, 2021, 6:22:25 PM
    Author     : nakas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE HEALTH CENTRE</title>
    </head>
    <body>
        <div>
           <form action="edit_hc.jsp" method="post">
               <td><input type ="text" name="healthCentreId" value='<%= request.getParameter("healthCentreId") %>' hidden>
        <table>
            <tr>
                <td><font color="black">Health Centre Name: </font></td>
                <td><input type ="text" name="healthCentreName" value='<%= request.getParameter("healthCentreName") %>'></td>
            </tr>
             <tr>
                 <td><font color="black">District: </font></td> 
                 <td><input type ="text" name="district" value='<%= request.getParameter("district") %>'></td>
            </tr>
             <tr>
                 <td><font color="black"> Vaccines Received: </font></td> 
                 <td><input type ="text" name="vaccinesReceived" value='<%= request.getParameter("vaccinesReceived") %>'></td>
            </tr>
             <tr>
                 <td><font color="black">Available Vaccines: </font></td> 
                 <td><input type ="text" name="vaccinesAvailable" value='<%= request.getParameter("vaccinesAvailable") %>'></td>
            </tr>
            <tr>

                <td><p id="submission"><input type="submit" value="submit"></p></td>
               
        </tr>
              
        </table>
        </form>
                   
            
            
            
            
            
            
            
        </div> 
        
        
        
        
        
        
        
        
    </body>
</html>
