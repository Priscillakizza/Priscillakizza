<%-- 
    Document   : Registrationform
    Created on : Dec 5, 2021, 4:42:01 PM
    Author     : nakas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
    </head>
    <body>
        <div>
            <form action="inserting_health_center.jsp" method="post">
        <table>
            <tr>
                <td><font color="black">healthCentreName: </font></td>
                <td><input type ="text" name="healthCentreName"></td>
            </tr>
             <tr>
                 <td><font color="black">district: </font></td> 
                 <td><input type ="text" name="district"></td>
            </tr>
             <tr>
                 <td><font color="blayck"> vaccinesReceived: </font></td> 
                 <td><input type ="text" name="vaccinesReceived"></td>
            </tr>
             <tr>
                 <td><font color="black">vaccinesAvailable: </font></td> 
                 <td><input type ="text" name="vaccinesAvailable"></td>
            </tr>
            <tr>

                <td><p id="submission"><input type="submit" value="submit"></p></td>
               
        </tr>
              
        </table>
        </form>
                  
                </div>
                
        
        
        
        
    </body>
</html>
