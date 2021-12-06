<%-- 
    Document   : display
    Created on : Dec 6, 2021, 10:43:44 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>display Page</title>
        <style> body {
            background-color: pink;
            } </style>
    </head>
    <body>
    <%@taglib uri = "/WEB-INF/tlds/registering.tld" prefix="display"%>
        <h1> display registered vaccines</h1>
        <display:displaying table = "vaccine_inventory" where = ""  displayformat = "table" />
    </body>
</html>
