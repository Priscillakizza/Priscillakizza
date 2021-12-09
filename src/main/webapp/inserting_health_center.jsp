<%-- 
    Document   : inserting_health_center
    Created on : Dec 4, 2021, 4:01:31 PM
    Author     : nakas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/health.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <vaccination:insert
            table="healthcentres" 
            value1='<%= request.getParameter("healthCentreName") %>'
            value2='<%= request.getParameter("district") %>'
            value3='<%= request.getParameter("vaccinesReceived") %>'
            value4='<%= request.getParameter("vaccinesAvailable") %>'
        />
        
       
    </body>
</html>
