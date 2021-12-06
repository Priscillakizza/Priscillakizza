<%-- 
    Document   : healthdispaly
    Created on : Dec 6, 2021, 3:35:13 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>distribution display Page</title> 
        <style>
        body {
            background-color: powderblue ;
            } </style>
    </head>
    <body>
        <%@taglib uri = "/WEB-INF/tlds/registering.tld" prefix="display1"%>
        <h1>health center display of distribution</h1>
         <display1:healthcenterdisplay table = "healthcentre_distribution" where = ""  displayformat = "table" />
    </body>
</html>
