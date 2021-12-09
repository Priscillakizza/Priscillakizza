<%-- 
    Document   : edit_hc
    Created on : Dec 4, 2021, 7:26:48 PM
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
        <vaccination:update table="healthcentres"
                            newvalue1='<%= request.getParameter("healthCentreName") %>'
                            newvalue2='<%= request.getParameter("district") %>'
                            newvalue3='<%= request.getParameter("vaccinesReceived") %>'
                            newvalue4='<%= request.getParameter("vaccinesAvailable") %>'
                            where='<%= request.getParameter("healthCentreId") %>' 
        />
    </body>
</html>
