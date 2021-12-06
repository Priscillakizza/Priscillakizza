<%-- 
    Document   : login
    Created on : Dec 6, 2021, 8:32:08 PM
    Author     : ALJEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Welcome to the login form</h1>
            <form action="loginServlet" method="get">
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="confirmpassword" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit"></td>
                </tr>
            </table>
                
                
                
                
                
    </body>
</html>
