<%-- 
    Document   : health_center
    Created on : Dec 4, 2021, 1:02:54 PM
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
        <vaccination:select table="healthcentres" where="nmmm" displayformat="table" />
        
    </body>
</html>
